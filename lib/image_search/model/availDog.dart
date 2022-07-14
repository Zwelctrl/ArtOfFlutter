class AvailableDogs {
  List<String> DogName;

  AvailableDogs._(this.DogName);

  factory AvailableDogs.fromJSON(Map<String, dynamic> result) {
    final List<String> data = [];

    final Map _message = result['message'] as Map;

    _message.forEach((key, value) {
      data.add(key.toString());
    });
    // print(_message);
    return AvailableDogs._(data);
  }
}

// class ထဲ List နဲ့ ၀င်တယ် 