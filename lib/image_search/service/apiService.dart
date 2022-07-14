import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:learn_flutter/image_search/model/availDog.dart';
import 'package:learn_flutter/image_search/model/image_model.dart';

// fetch uri from site (get function)
class _API {
  Future<Map<String, dynamic>?> get(String uri) async {
    try {
      final http.Response _result = await http.get(Uri.parse(uri));
      return jsonDecode(_result.body);
    } catch (e) {
      return null;
    }
  }
}

class APIservice extends _API {
  AvailableDogs? aval;

  // put data in class AvailableDogs model and stored in APIservice's instance
  APIservice._() {
    availableDogs().then((value) {
      aval = value;
    });
  }

  // stored in static, therefore instance of the class is only one
  // created in private, therefor it cant be accessed from anywhere
  static APIservice? _instance;

  static APIservice instance() {
    // return _instance == null ? _instance = APIservice._() : _instance;

    // single instance
    _instance ??= APIservice._();
    return _instance!;
  }

  // getting available dogs (Map နဲ့ ထုတ်သည်)
  Future<AvailableDogs?> availableDogs() async {
    Map<String, dynamic>? _result =
        await get('https://dog.ceo/api/breeds/list/all');
    if (_result == null) return null;
    // print(_result);
    return AvailableDogs.fromJSON(_result);
  }

  // getting a dog (String နဲ့ ထုတ်သည်)
  Future<ImageModel?> getDog(String uri) async {
    final Map<String, dynamic>? _result =
        await get("https://dog.ceo/api/breed/$uri/images/random");
    if (_result == null) return null;

    return ImageModel.fromJSON(_result);

    // try {
    //   final http.Response a = await http.get(Uri.parse(uri));
    //   return ImageModel.fromJSON(jsonDecode(a.body));
    // } catch (e) {
    //   return null;
    // }
  }
}

// get function တစ်ခုထဲကို List နဲ့ ထုတ်မယ့်နေရာကော String နဲ့ ထုတ်မယ့်နေရာကော အတွက် ဘုံသုံးလုပ်ထားတယ်
