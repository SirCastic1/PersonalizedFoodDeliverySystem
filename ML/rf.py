import pandas as pd
import numpy as np
import tensorflow as tf
import sklearn
from sklearn import preprocessing


dftrain = pd.read_csv("x.csv")
dfeval = pd.read_csv("x.csv")
y_train = dftrain.pop('Recommended.Package') #put as target and pop from dataset
y_eval  = dfeval.pop('Recommended.Package')

#'Taste.Preferences','Diabetes'

fc = tf.feature_column
CATEGORICAL_COLUMNS = [ 'FoodType.Egg',	'FoodType.NonVegetarian',	'FoodType.Seafood'	,'FoodType.Vegan',	'FoodType.Vegetarian',	'Allergies.Corn',	'Allergies.Eggs',	'Allergies.Fish',	'Allergies.Gelatin',	'Allergies.Peanuts',	'Allergies.Soy',	'Allergies.Wheat',	'Allergies.Milk',	'Allergies.None',	'Likes.Chinese',	'Likes.Lebanese',	'Likes.Maharashtrian',	'Likes.Punjabi',	'Likes.Western','Likes.None',	'Likes.Thai']
NUMERIC_COLUMNS = ['BMI']

def one_hot_cat_column(feature_name, vocab):
  return tf.feature_column.indicator_column(
    tf.feature_column.categorical_column_with_vocabulary_list(feature_name,
                                                              vocab))

feature_columns = []
for feature_name in CATEGORICAL_COLUMNS:
  # Need to one-hot encode categorical features.
  vocabulary = dftrain[feature_name].unique()
  #feature_columns.append(one_hot_cat_column(feature_name, vocabulary))
  feature_columns.append(tf.feature_column.numeric_column(feature_name,
                                                          dtype=tf.int64))




for feature_name in NUMERIC_COLUMNS:
  feature_columns.append(tf.feature_column.numeric_column(feature_name,
                                                         dtype=tf.float32))



print(feature_columns)

NUM_EXAMPLES = len(y_train)

def make_input_fn(X, y, n_epochs=100, shuffle=True):
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
eval_input_fn = make_input_fn(dfeval, y_eval, shuffle=False, n_epochs=100)



n_batches = 1
est = tf.estimator.LinearClassifier(feature_columns=feature_columns,
                                          n_classes=17)

est.train(train_input_fn, steps=100)

# Eval.
results = est.evaluate(eval_input_fn)

print('Accuracy : ', results['accuracy'])

dfpred = pd.read_csv("test.csv")
y_pred  = dfpred.pop('Recommended.Package')

preds=est.predict(make_input_fn(dfpred,y_pred))
#print(preds)


#'Taste.Preferences' : tf.placeholder(tf.int64, [None]),
     # 'Diabetes' : tf.placeholder(tf.int64, [None]),

def serving_input_fn():
    feature_placeholders = {

      'BMI': tf.placeholder(tf.float32, [None]),
      'FoodType.Egg': tf.placeholder(tf.int64, [None]),
      'FoodType.NonVegetarian' : tf.placeholder(tf.int64, [None]),
      'FoodType.Seafood' : tf.placeholder(tf.int64, [None]),
      'FoodType.Vegan': tf.placeholder(tf.int64, [None]),
      'FoodType.Vegetarian': tf.placeholder(tf.int64, [None]),
      'Allergies.Corn' : tf.placeholder(tf.int64, [None]),
      'Allergies.Eggs' : tf.placeholder(tf.int64, [None]),
      'Allergies.Fish': tf.placeholder(tf.int64, [None]),
      'Allergies.Gelatin': tf.placeholder(tf.int64, [None]),
      'Allergies.Peanuts' : tf.placeholder(tf.int64, [None]),
      'Allergies.Soy' : tf.placeholder(tf.int64, [None]),
      'Allergies.Wheat': tf.placeholder(tf.int64, [None]),
      'Allergies.Milk': tf.placeholder(tf.int64, [None]),
      'Allergies.None' : tf.placeholder(tf.int64, [None]),
      'Likes.Chinese' : tf.placeholder(tf.int64, [None]),
      'Likes.Lebanese': tf.placeholder(tf.int64, [None]),
      'Likes.Maharashtrian': tf.placeholder(tf.int64, [None]),
      'Likes.Punjabi' : tf.placeholder(tf.int64, [None]),
      'Likes.Western' : tf.placeholder(tf.int64, [None]),
      'Likes.None': tf.placeholder(tf.int64, [None]),
      'Likes.Thai': tf.placeholder(tf.int64, [None])

    }
    features = {
        key: tf.expand_dims(tensor, -1)
        for key, tensor in feature_placeholders.items()
    }
    return tf.estimator.export.ServingInputReceiver(features,
                                                    feature_placeholders)



builder=est.export_saved_model(export_dir_base='C:/Users/ajayb/OneDrive/Desktop/roj/SM',serving_input_receiver_fn=serving_input_fn)
