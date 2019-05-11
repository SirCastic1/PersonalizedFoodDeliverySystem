import pandas as pd
import numpy as np
import tensorflow as tf
import sklearn
from sklearn import preprocessing

dftrain=pd.read_csv("uaha.csv")
dftrain=dftrain.drop(['Timestamp','Age','Locality','Height(cms)','Weight(kgs)',],axis=1)

datalikes=dftrain['Any specific Likes?'].str.get_dummies(sep=',')
dataftypes=dftrain['Food Types ( You can select more than one)'].str.get_dummies(sep=',')
dataallergies=dftrain['Allergies(leave blank if none)'].str.get_dummies(sep=',')


df=pd.concat([dftrain, dataftypes,dataallergies,datalikes], axis=1)
df=df.drop(['Allergies(leave blank if none)','Food Types ( You can select more than one)','Any specific Likes?'],axis=1)

#Food type
df["FoodType.Egg"]=df.iloc[:,4]|df.iloc[:,8] #EGG 5 9 1
df["FoodType.NonVegetarian"]=df.iloc[:,5]|df.iloc[:,9]
df["FoodType.Seafood"]=df.iloc[:,8]|df.iloc[:,10]
df["FoodType.Vegan"]=df.iloc[:,9]|df.iloc[:,11]
df["FoodType.Vegetarian"]=df.iloc[:,12]



#Allergie

df["Allergies.Corn"]=df.iloc[:,13]|df.iloc[:,21]
df["Allergies.Eggs"]=df.iloc[:,14]|df.iloc[:,22]
df["Allergies.Fish"]=df.iloc[:,15]|df.iloc[:,23]
df["Allergies.Gelatin"]=df.iloc[:,16]|df.iloc[:,24]
df["Allergies.Groundnut"]=df.iloc[:,17]
df["Allergies.Peanuts"]=df.iloc[:,18]|df.iloc[:,27]
df["Allergies.Soy"]=df.iloc[:,19]|df.iloc[:,29]
df["Allergies.Wheat"]=df.iloc[:,20]|df.iloc[:,30]
df["Allergies.Milk"]=df.iloc[:,25]
df["Allergies.None"]=df.iloc[:,26]
df["Allergies.Prawns"]=df.iloc[:,28]

#Likes
df["Likes.Chinese"]=df.iloc[:,31]|df.iloc[:,36]
df["Likes.Lebanese"]=df.iloc[:,32]|df.iloc[:,37]
df["Likes.Maharashtrian"]=df.iloc[:,33]|df.iloc[:,38]
df["Likes.Punjabi"]=df.iloc[:,34]|df.iloc[:,40]
df["Likes.Western"]=df.iloc[:,35]|df.iloc[:,42]
df["Likes.None"]=df.iloc[:,39]
df["Likes.Thai"]=df.iloc[:,41]


df=df.drop(df.iloc[:,4:43],axis=1) #until 43 not including 43

leR=preprocessing.LabelEncoder()
df['Recommended.Package'] = leR.fit_transform(df['Recommended.Package'])
print(leR.classes_)

leD=preprocessing.LabelEncoder()
df['Diabetes'] = leD.fit_transform(df['Diabetes'])
print(leD.classes_)

leT=preprocessing.LabelEncoder()
df['Taste.Preferences'] = leT.fit_transform(df['Taste.Preferences'])
print(leT.classes_)


df['BMI']=df['BMI'].round(3) #reduce float

'''
One hot: 1 true 0 false
Label Encoding:

Recommended Package:0-16
['BMI-High' 'BMI-Low' 'Chinese-Normal' 'Chinese-Vegan'
 'Chinese-Vegetarian' 'Diabetes' 'Lebenese-Nor' 'Lebenese-Vegeterain'
 'Maharashtrian-Nor' 'Maharashtrian-Vegetarian' 'Punjabi-Normal'
 'Punjabi-Vegan' 'Punjabi-Vegetarian' 'Thai-Nor' 'Thai-Veg' 'Western Nor'
 'Western-Veg']
 
 Diabetes:['No' 'Yes']
Taste Preference:['Bland' 'Medium-Spicy' 'None' 'Spicy']
 
 
 Note change 3 columns manually.
'''
df.to_csv("x.csv")


#IMPLLEMENTING BOOSTEDTREESCLASSIFIER TENSORFLOW

dftrain = df
dfeval = pd.read_csv("test.csv")
y_train = dftrain.pop('Recommended.Package') #put as target and pop from dataset
y_eval  = dfeval.pop('Recommended.Package')



fc = tf.feature_column
CATEGORICAL_COLUMNS = [ 'Taste.Preferences','Diabetes','FoodType.Egg',	'FoodType.NonVegetarian',	'FoodType.Seafood'	,'FoodType.Vegan',	'FoodType.Vegetarian',	'Allergies.Corn',	'Allergies.Eggs',	'Allergies.Fish',	'Allergies.Gelatin',	'Allergies.Groundnut',	'Allergies.Peanuts',	'Allergies.Soy',	'Allergies.Wheat',	'Allergies.Milk',	'Allergies.None', 'Allergies.Prawns',	'Likes.Chinese',	'Likes.Lebanese',	'Likes.Maharashtrian',	'Likes.Punjabi',	'Likes.Western','Likes.None',	'Likes.Thai']
NUMERIC_COLUMNS = ['BMI']

def one_hot_cat_column(feature_name, vocab):
  return tf.feature_column.indicator_column(
    tf.feature_column.categorical_column_with_vocabulary_list(feature_name,
                                                              vocab))

feature_columns = []
for feature_name in CATEGORICAL_COLUMNS:
  # Need to one-hot encode categorical features.
  vocabulary = dftrain[feature_name].unique()
  feature_columns.append(one_hot_cat_column(feature_name, vocabulary))





for feature_name in NUMERIC_COLUMNS:
  feature_columns.append(tf.feature_column.numeric_column(feature_name,
                                                         dtype=tf.float32))



classifier = tf.estimator.BoostedTreesClassifier(
    feature_columns=feature_columns,
    n_batches_per_layer=10
)



NUM_EXAMPLES = len(y_train)

def make_input_fn(X, y, n_epochs=None, shuffle=True):
  def input_fn():
    dataset = tf.data.Dataset.from_tensor_slices((dict(X), y))
    if shuffle:
      dataset = dataset.shuffle(NUM_EXAMPLES)
    # For training, cycle thru dataset as many times as need (n_epochs=None).
    dataset = dataset.repeat(n_epochs)
    # In memory training doesn't use batching.
    dataset = dataset.batch(NUM_EXAMPLES)
    return dataset
  return input_fn

train_input_fn = make_input_fn(dftrain, y_train)
eval_input_fn = make_input_fn(dfeval, y_eval, shuffle=False, n_epochs=1)



n_batches = 1
est = tf.estimator.BoostedTreesClassifier(feature_columns,
                                          n_batches_per_layer=n_batches)

# The model will stop training once the specified number of trees is built, not
# based on the number of steps.
est.train(train_input_fn, max_steps=100)

# Eval.
result = est.evaluate(eval_input_fn)


'''



def input_evaluation_set():
    features = {'FoodType.Egg': np.array([1, 0]),
                'FoodType.NonVegetarian':  np.array([1, 0]),
                'FoodType.Seafood': np.array([1, 0]),
                'FoodType.Vegan':  np.array([1, 0]),
                'FoodType.Vegetarian': np.array([1, 0]),
                'Allergies.Corn': np.array([1, 0]),
                'Allergies.Eggs': np.array([1, 0]),
                'Allergies.Fish': np.array([1, 0]),
                'Allergies.Gelatin': np.array([1, 0]),
                'Allergies.Groundnut': np.array([1, 0]),
                'Allergies.Peanuts': np.array([1, 0]),
                'Allergies.Soy': np.array([1, 0]),
                'Allergies.Wheat': np.array([1, 0]),
                'Allergies.None': np.array([1, 0]),
                'Allergies.Prawns': np.array([1, 0]),
                'Likes.Chinese': np.array([1, 0]),
                'Likes.Lebanese': np.array([1, 0]),
                'Likes.Punjabi': np.array([1, 0]),
                'Likes.Maharashtrian': np.array([1, 0]),
                'Likes.Western': np.array([1, 0]),
                'Likes.None': np.array([1, 0]),
                'Likes.Thai': np.array([1, 0])}
    labels = np.array(y_train.unique()) #returns numpy array
    return features, labels



##############################################

linear_est = tf.estimator.LinearClassifier(feature_columns)

# Train model.
linear_est.train(input_fun, max_steps=100)

# Evaluation.
result = linear_est.evaluate(eval_fun)

###########

dft = df


features = ['FoodType.Egg',	'FoodType.NonVegetarian',	'FoodType.Seafood'	,'FoodType.Vegan',	'FoodType.Vegetarian',	'Allergies.Corn',	'Allergies.Eggs',	'Allergies.Fish',	'Allergies.Gelatin',	'Allergies.Groundnut',	'Allergies.Peanuts',	'Allergies.Soy',	'Allergies.Wheat',	'Allergies.Milk',	'Allergies.None', 'Allergies.Prawns',	'Likes.Chinese',	'Likes.Lebanese',	'Likes.Maharashtrian',	'Likes.Punjabi',	'Likes.Western','Likes.None',	'Likes.Thai']
label = ['Recommended Package']

training_dataset = (
    tf.data.Dataset.from_tensor_slices(
        (

            tf.cast(dft[features].values, tf.int32),
        )
    )
)


def make_input_fn(X, y, n_epochs=None, shuffle=True):
  def input_fn():
    dataset = tf.data.Dataset.from_tensor_slices((dict(X), y))
    if shuffle:
      dataset = dataset.shuffle(NUM_EXAMPLES)
    # For training, cycle thru dataset as many times as need (n_epochs=None).
    dataset = dataset.repeat(n_epochs)
    # In memory training doesn't use batching.
    dataset = dataset.batch(NUM_EXAMPLES)
    return dataset
  return input_fn

classifier.train(make_input_fn(training_dataset,dft['Recommended Package'].unique()))
'''

