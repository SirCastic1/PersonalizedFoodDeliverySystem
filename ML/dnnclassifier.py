import pandas as pd
import numpy as np
import tensorflow as tf
import sklearn
from sklearn import preprocessing

#Note: Change 3 columns(Diabetes,Taste.Preferences,Food.Preferences) in uaha.csv manually to avoid out of scope error
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



#Allergie 17 28

df["Allergies.Corn"]=df.iloc[:,13]|df.iloc[:,20]
df["Allergies.Eggs"]=df.iloc[:,14]|df.iloc[:,21]
df["Allergies.Fish"]=df.iloc[:,15]|df.iloc[:,22]
df["Allergies.Gelatin"]=df.iloc[:,16]|df.iloc[:,23]
df["Allergies.Peanuts"]=df.iloc[:,17]|df.iloc[:,26]
df["Allergies.Soy"]=df.iloc[:,18]|df.iloc[:,27]
df["Allergies.Wheat"]=df.iloc[:,19]|df.iloc[:,28]
df["Allergies.Milk"]=df.iloc[:,24]
df["Allergies.None"]=df.iloc[:,25]

#Likes
df["Likes.Chinese"]=df.iloc[:,29]|df.iloc[:,34]
df["Likes.Lebanese"]=df.iloc[:,30]|df.iloc[:,35]
df["Likes.Maharashtrian"]=df.iloc[:,31]|df.iloc[:,36]
df["Likes.Punjabi"]=df.iloc[:,32]|df.iloc[:,38]
df["Likes.Western"]=df.iloc[:,33]|df.iloc[:,40]
df["Likes.None"]=df.iloc[:,37]
df["Likes.Thai"]=df.iloc[:,39]

df=df.drop(df.iloc[:,4:41],axis=1) #until 43 not including 43

leR = preprocessing.LabelEncoder()
df['Recommended.Package'] = leR.fit_transform(df['Recommended.Package'])
#print(leR.classes_) #to see the order

leD = preprocessing.LabelEncoder()
df['Diabetes'] = leD.fit_transform(df['Diabetes'])
#print(leD.classes_)

leT = preprocessing.LabelEncoder()
df['Taste.Preferences'] = leT.fit_transform(df['Taste.Preferences'])
#print(leT.classes_)

df['BMI'] = df['BMI'].round(3)  # reduce float

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
#df.to_csv("x.csv")




#df.to_csv("x.csv")


#IMPLLEMENTING BOOSTEDTREESCLASSIFIER TENSORFLOW

dftrain = pd.read_csv("x.csv")
dfeval = pd.read_csv("x.csv")
y_train = dftrain.pop('Recommended.Package') #put as target and pop from dataset
y_eval  = dfeval.pop('Recommended.Package')



fc = tf.feature_column
CATEGORICAL_COLUMNS = [ 'Taste.Preferences','Diabetes','FoodType.Egg',	'FoodType.NonVegetarian',	'FoodType.Seafood'	,'FoodType.Vegan',	'FoodType.Vegetarian',	'Allergies.Corn',	'Allergies.Eggs',	'Allergies.Fish',	'Allergies.Gelatin',	'Allergies.Peanuts',	'Allergies.Soy',	'Allergies.Wheat',	'Allergies.Milk',	'Allergies.None',	'Likes.Chinese',	'Likes.Lebanese',	'Likes.Maharashtrian',	'Likes.Punjabi',	'Likes.Western','Likes.None',	'Likes.Thai']
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

def make_input_fn(X, y, n_epochs=1000, shuffle=True):
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
est = tf.estimator.DNNClassifier(hidden_units=[64,32],feature_columns=feature_columns,
                                          n_classes=17)

# The model will stop training once the specified number of trees is built, not
# based on the number of steps.
est.train(train_input_fn, steps=100)

# Eval.
results = est.evaluate(eval_input_fn)

print('Accuracy : ', results['accuracy'])

