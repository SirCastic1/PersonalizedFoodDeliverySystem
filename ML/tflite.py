import tensorflow as tf

converter = tf.lite.TFLiteConverter.from_saved_model('C:/Users/ajayb/OneDrive/Desktop/roj/SM/1557900348',signature_key='predict')
converter.post_training_quantize=True
converter.target_ops = [tf.lite.OpsSet.TFLITE_BUILTINS, tf.lite.OpsSet.SELECT_TF_OPS]


tflite_model = converter.convert()
open("converted_model.tflite", "wb").write(tflite_model)C:\Users\ajayb\OneDrive\Desktop\roj\SM\