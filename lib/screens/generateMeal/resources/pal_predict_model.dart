import 'package:firebase_ml_model_downloader/firebase_ml_model_downloader.dart';
import 'package:tflite_flutter/tflite_flutter.dart';

const modelName = 'ANN-PAL-V2';

class PalPredictModel {
  static FirebaseCustomModel? customeModel;

  PalPredictModel() {
    initWithLocalModel();
    doanloadLatestModel();
  }

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

    print("Predict method downloaded the model");

    var interpreter = Interpreter.fromFile(customeModel!.file);

    print(interpreter);
    //   doanloadLatestModel();
    // print(interpreter);
    //List days = ["monday","tuesday","wednesday","thursday","friday","saturday","sunday"];
    var input = [
      [1.0, 21.0, 56.778919, 1.630953, 21.345399, 1530.148, 58.520162]
    ];
    // if (!(customeModel != null)) {
    /*for( var i = 0 ; i < 7; i++ ){
        for (var i in data['week'][days[i]]['meals']) {
          _temp.add(i);
        }
    }*/

    var output = List.filled(1 * 1, 0).reshape([1, 1]);

    interpreter.run(input, output);

    print("Model works perfectly Fine");

//  predicted PAL being converted to decimal
    double palPredicted = (output.elementAt(0)[0] * (-1)) / 100;
    print(palPredicted);

    interpreter.close();
    return palPredicted;
  }
}

//   // Running the model
class palPredictWithValues {}
