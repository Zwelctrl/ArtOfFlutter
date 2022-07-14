import 'package:learn_flutter/enumAndSwitch.dart';

class MoreDogs {
  List<String> DogId;

  MoreDogs(this.DogId);

  factory MoreDogs.fromJSON(Map<String, dynamic> data3) {
    List<String> aphyaykhan = [];

    final ran = data3['message'] as Map;

    ran.forEach(
      (key, value) {
        aphyaykhan.add(key.toString());
      },
    );
    print(aphyaykhan);
    return MoreDogs(aphyaykhan);
  }
}
