import 'package:learn_flutter/enumAndSwitch.dart';

class ImageModel {
  String imageURI;

  ImageModel._(this.imageURI);

  factory ImageModel.fromJSON(Map<String, dynamic> data) =>
      ImageModel._(data['message'].toString());
}

// class ထဲ String နဲ့ ၀င်တယ်