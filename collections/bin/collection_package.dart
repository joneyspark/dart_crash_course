import 'package:collection/collection.dart';

void main(List<String> args) {
  final boolList = BoolList(10, growable: true);
  print(boolList);

  boolList[3] = true;
  if (boolList[3]) {
    print('The boolean value at index 3 is true');
  } else {
    print('The boolean value at index 3 is false');
  }
  print(boolList);

  testCanonicalizedMap();

  print('------Combined Iterable View');
  combinedIterableView();
}

void testCanonicalizedMap() {
  final info = {
    'name': 'Joney',
    'age': 20,
    'sex': 'Male',
    'bla': 'bla',
    'address': 'UK',
  };

  final cannoMap = CanonicalizedMap.from(info, (key) {
    return key.length;
    // return key.split('').first;
  });

  print(cannoMap);
}

void combinedIterableView() {
  final one = [1, 2, 3];
  final two = [10, 20, 30];
  final three = [40, 50, 60];

  final combined = CombinedIterableView([one, two, three]);
  two.add(40);
  print(combined);
}
