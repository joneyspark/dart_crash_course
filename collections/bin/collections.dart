import 'package:collections/collections.dart' as collections;

void main(List<String> arguments) {
  const names = ['Foo', 'Bar', 'Joney', 'Spark', 'Boney'];

  for (final name in names) {
    print(name);
  }

  print('foor loop reversed');

  for (var name in names.reversed) {
    print(name);
  }
  print('----------------');
  if (names.contains('Joney')) {
    print('Joney in this list');
  }

  print('---------------');
  for (final name in names.where((name) => name.startsWith('B'))) {
    print(name);
  }

  print('-----------');
  names.sublist(1).forEach(print);
  print('-----------');
  names.sublist(1, 3).forEach(print);

  print('-----------add-----');
  final ages = [20, 30, 40];
  print(ages);
  ages.add(50);
  ages.add(60);
  print(ages);

  print('-----Map-------');
  names.map((e) => e.toUpperCase()).forEach(print);
  print('-----Map Lenght------');
  names.map((e) => e.length).forEach(print);
  print('-------summation-------');
  const numbers = [1, 2, 3];
  int sum = 0;
  for (var number in numbers) {
    sum += number;
  }
  print(sum);

  print('-----Dart fold------');
  final sumation =
      numbers.fold(0, (previousValue, thisValue) => previousValue + thisValue);
  print(sumation);

  print('-------Total Length-------');

  final totalLength =
      names.fold(0, (previousValue, element) => previousValue + element.length);

  print(totalLength);

  print('------Remove comma');

  final noComma =
      names.fold('', (result, str) => '$result ${str.toUpperCase()}');

  print(noComma);
}
