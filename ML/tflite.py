import tensorflow as tf

converter = tf.lite.TFLiteConverter.from_saved_model('C:/Users/ajayb/OneDrive/Desktop/roj/SM/1557730360',signature_key='predict')
tflite_model = converter.convert()
#open("converted_model.tflite", "wb").write(tflite_model)
