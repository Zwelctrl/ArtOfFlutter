import 'dart:convert';
import 'dart:io';
import 'package:http/http.dart' as http;
import 'package:learn_flutter/test_package/model/dog_model.dart';
import 'package:learn_flutter/test_package/model/many_dogs.dart';

class API {
  Future<Map<String, dynamic>?> get(String uri) async {
    try {
      final x = await http.get(Uri.parse(uri));
      return jsonDecode(x.body);
    } catch (e) {
      return null;
    }
  }
}

class APIserviseN extends API {
  Future<Dog?> setData() async {
    final Map<String, dynamic>? result2 =
        await get('https://dog.ceo/api/breeds/image/random');
    if (result2 == null) return null;
    return Dog.fromJSON(result2);
  }

  Future<MoreDogs?> getMoreDogs() async {
    final Map<String, dynamic>? result3 =
        await get('https://dog.ceo/api/breeds/list/all');
    if (result3 == null) return null;
    return MoreDogs.fromJSON(result3);
  }
}
