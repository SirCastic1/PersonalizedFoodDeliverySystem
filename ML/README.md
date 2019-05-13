System:Windows 10
Python 3.6
tensorflow latest nightly build 1.14+

Description:
Finding target class Recommended Package based on users Food preferences,likes,allergies,taste preferences and BMI

Files:

uaha.csv:Original dataset
preprocess.py:converts uaha.csv to x.csv after preprocessing
rf.py (trains the model and generates Saved Model)

x.csv (dataset formed using preprocess.py on uaha.csv(original dataset))

tflite.py ( tfliteconverter throwing error)

SM folder contains a saved model 
