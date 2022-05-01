import 'package:firebase_ml_model_downloader/firebase_ml_model_downloader.dart';
import 'package:tflite_flutter/tflite_flutter.dart';

const modelName = 'PAL-Predictor';

class PalPredictModel {
  static FirebaseCustomModel? customeModel;

// Finding whether a local model exist, if so use it
  initWithLocalModel() async {
    final _model = await FirebaseModelDownloader.instance.getModel(
        modelName, FirebaseModelDownloadType.localModelUpdateInBackground);

    customeModel = _model;
  }

// If ther's no local model download the latest model from Firebase
  doanloadLatestModel() async {
    final _modelDoanloaded = await FirebaseModelDownloader.instance
        .getModel(modelName, FirebaseModelDownloadType.latestModel);

    customeModel = _modelDoanloaded;
  }

  // Wrapping with interpreter and RUN

  usePredictModel() async {
    print("Predict method works perfectly Fine");
    doanloadLatestModel();
    // initWithLocalModel();
    // if (!(customeModel != null)) {
    //   doanloadLatestModel();
    // }
    print("Predict method works perfectly Fine");

    final interpreter = Interpreter.fromFile(customeModel!.file);

    print(interpreter);
    var input = [
      [1.0, 19.0, 56.778919, 1.630953, 21.345399, 1530.148, 58.520162]
    ];
    var output = List.filled(1 * 1, 0).reshape([1, 1]);

    interpreter.run(input, output);

    print("Model works perfectly Fine");
    print(output);
    interpreter.close();
  }
}
//   // Running the model
