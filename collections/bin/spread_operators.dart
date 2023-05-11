void main(List<String> args) {
  addToWrongArray();
  print('------Right Way------');
  addToRightArray();
  addToDictonary();
}

void addToWrongArray() {
  final name1 = ['Foo 1', 'Bar 1', 'Baz 1'];
  final name2 = ['Foo 2', 'Bar 2', 'Baz 2'];

  final allNamesWrong = name1;
  name1.addAll(name2);
  print(name1);
  print(name2);
  print(allNamesWrong);
}

void addToRightArray() {
  final name1 = ['Foo 1', 'Bar 1', 'Baz 1'];
  final name2 = ['Foo 2', 'Bar 2', 'Baz 2'];

  final allNamesRight = [...name1, ...name2];
  print(name1);
  print(name2);
  print(allNamesRight);
  print('-----another way-------');

  final anotherWay = {...name1}..addAll(name2);
  print(anotherWay);
}

void addToDictonary() {
  const info = {
    'name': 'Joney',
    'age': 30,
    'country': 'Bangladesh',
  };

  final result = {...info}..addAll({'weight': 65});
  print('----Add to Dictionary----');
  print(result);
}
