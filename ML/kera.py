import tensorflow as tf
import pandas as pd
import numpy as np
from tensorflow.keras.layers import Dense,Dropout


x_train=pd.read_csv("x.csv")
y_train=x_train.pop("Recommended.Package")


print(y_train[50:51])
x_test=pd.read_csv("test.csv")
y_test=x_test.pop("Recommended.Package")


model = tf.keras.Sequential()
model.add(Dense(17, input_dim=25,activation='relu'))
model.add(Dropout(0.5))
model.add(Dense(17, activation='softmax'))

model.compile(loss='sparse_categorical_crossentropy',optimizer='Adadelta',metrics=['accuracy'])

model.fit(x_train, y_train, batch_size=300, epochs=1000)

score=model.evaluate(x_train,y_train,batch_size=128)

print(model.predict_classes(x_train[50:51]))

print(model.metrics_names)

print(score)