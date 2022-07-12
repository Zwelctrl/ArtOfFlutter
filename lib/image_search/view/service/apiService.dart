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

  // getting available dogs (List နဲ့ ထုတ်သည်)
  Future<AvailableDogs?> availableDogs() async {
    Map<String, dynamic>? _result =
        await get('https://dog.ceo/api/breeds/list/all');
    if (_result == null) return null;
    return AvailableDogs.fromJSON(_result);
    // print(_result);
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
