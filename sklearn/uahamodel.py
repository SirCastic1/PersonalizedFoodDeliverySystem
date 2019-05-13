import pandas as pd
from sklearn.preprocessing import OneHotEncoder
from sklearn.preprocessing import LabelEncoder
import numpy as np
from sklearn.metrics import confusion_matrix 
from sklearn.model_selection import train_test_split 
from sklearn.tree import DecisionTreeClassifier 
from sklearn.metrics import accuracy_score 
from sklearn.metrics import classification_report

#load the data
data = pd.read_csv("uaha.csv")

#drop useless columns
data=data.drop(['Timestamp','Age','Locality','Height(cms)','Weight(kgs)'],axis=1)

#initialize var for one hot encoder
enc = OneHotEncoder(handle_unknown='ignore')

#Encode Food types
food_types = np.array(data['Food Types ( You can select more than one)']).reshape(-1, 1)
cols=enc.fit_transform(food_types)
new_columns = np.unique(food_types)
for index in range(0, len(new_columns)):
	data[new_columns[index]] = cols.toarray()[:, index]
data=data.drop(['Food Types ( You can select more than one)'],axis=1)
print(data)
data.to_csv("a.csv")
#Encode Allergies
allergy_types = np.array(data['Allergies(leave blank if none)']).reshape(-1, 1)
cols1=enc.fit_transform(allergy_types)
new_columns1 = np.unique(allergy_types)
for index1 in range(0, len(new_columns1)):
	data[new_columns1[index1]] = cols1.toarray()[:, index1]
data=data.drop(['Allergies(leave blank if none)'],axis=1)

#Encode Specific Likes
likes_types = np.array(data['Any specific Likes?']).reshape(-1, 1)
cols2=enc.fit_transform(likes_types)
new_columns2 = np.unique(likes_types)
for index2 in range(0, len(new_columns2)):
	data[new_columns2[index2]] = cols2.toarray()[:, index2]
data=data.drop(['Any specific Likes?'],axis=1)

#Encode Taste
le = LabelEncoder()
le.fit(data['Taste Preferences'])
list(le.classes_)
data['Taste Preferences']=le.transform(data['Taste Preferences']) 

#Encode Diabetes
le1 = LabelEncoder()
le1.fit(data['Do you have diabetes?'])
list(le1.classes_)
data['Do you have diabetes?']=le1.transform(data['Do you have diabetes?'])

#print/observe
print(data.columns)
print(data.shape)

Data=pd.DataFrame(data)
#Split the data into training and testing data
Y=data.values[:,3]
data=data.drop(['Recommended Package'],axis=1)
X=data.values[:,0:94]
X_train, X_test, y_train, y_test = train_test_split(X, Y, test_size = 0.3, random_state = 100)
clf_entropy = DecisionTreeClassifier(criterion = "entropy", random_state = 100, max_depth = 3, min_samples_leaf = 5)
clf_entropy.fit(X_train, y_train)
y_pred = clf_entropy.predict(X_test)
print("Predicted values:")
print(y_pred)

