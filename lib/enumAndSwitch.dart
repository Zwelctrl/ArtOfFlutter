enum data { a, b, c, d, e }

final data msg = data.b;

void main() {
  switch (msg) {
    case data.a:
      print('It is a');
      break;
    case data.c:
      print('it is c');
      break;
    case data.d:
      print('It is d');
      break;
    default:
      print('I Give Up');
      break;
  }
}
