class Dog {
  String img;

  Dog(this.img);

  factory Dog.fromJSON(Map<String, dynamic> data) {
    print(data['message']);
    return Dog(data['message']);
  }
}
