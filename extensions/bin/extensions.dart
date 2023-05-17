import 'package:extensions/extensions.dart' as extensions;

void main(List<String> arguments) {
  // print('hello world'.reversed);
  final sumOfIntegers = [1, 2, 3].sum;
  print(sumOfIntegers);
  final sumOfDouble = [1.1, 2.2, 3.3, 4.4].sum;
  print(sumOfDouble);
}

extension on String {
  String get reversed => split('').reversed.join();
}

extension SumOfIterable<T extends num> on Iterable<T> {
  T get sum => reduce((a, b) => a + b as T);
}
