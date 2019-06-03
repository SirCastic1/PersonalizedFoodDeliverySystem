import pandas as pd
import tensorflow as tf

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
