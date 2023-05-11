import 'package:collection/collection.dart';

void main(List<String> args) {
  final names = {'Joney', 'Boney', 'Toney', 'Baz', 'Qux'};

  names.add('Spark');
  names.add('Joney');
  print(names);
  print('------------');

  final names2 = ['Joney', 'Boney', 'Toney', 'Baz', 'Qux'];
  final uniqueName = {names2, names2};
  print(uniqueName);

  print('------set hascode-------');

  final foo1 = 'Foo';
  final foo2 = 'foo';

  print(foo1.hashCode);
  print(foo2.hashCode);

  print('--------------');

  final ages1 = {20, 30, 40};
  final ages2 = {20, 30, 40};

  if (ages1 == ages2) {
    print('Ages are equal');
  } else {
    print('Ages are not equal');
  }

  print('--------------');

  if (SetEquality().equals(ages1, ages2)) {
    print('Ages are equal');
  } else {
    print('Ages are not equal');
  }
  print('--------------');

  final ages3 = {30, 40, 20};

  if (SetEquality().equals(ages1, ages3)) {
    print('Ages are equal');
  } else {
    print('Ages are not equal');
  }
}
