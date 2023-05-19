import 'package:generics/generics.dart' as generics;

void main(List<String> arguments) {
  final double doubleValue = eitherIntOrDouble();
  print(doubleValue);
}

T eitherIntOrDouble<T extends num>() {
  switch (T) {
    case int:
      return 1 as T;
    case double:
      return 1.1 as T;
    default:
      throw Exception('Not support');
  }
}
