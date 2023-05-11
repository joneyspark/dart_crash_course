import 'dart:collection';

void main(List<String> args) {
  final iterable = Iterable.generate(10, (i) => getName(i));
  for (var name in iterable.take(2)) {
    print(name);
  }

  const names = ['Joney', 'Jui', 'Boney', 'Luckey'];

  final upperCase = names.map((name) {
    return name.toUpperCase();
  });
  for (var name in upperCase.take(2)) {
    print(name);
  }

  // print('--------UnmodifiableListView--------');

  // const names2 = ['Joney', 'Jui', 'Boney', 'Luckey'];
  // names2.add('Roney');
  // try {
  //   final readOnlyList = UnmodifiableListView(names2);
  //   readOnlyList.add('Tony');
  // } catch (e) {
  //   print(e);
  // }

  final foo = Person(name: 'Foo', siblings: [
    Person(
      name: 'Bar',
    ),
  ]);

  foo._siblings?.add(
    Person(name: 'Baz'),
  );

  try {
    foo.siblings?.add(Person(name: 'New Siblings'));
  } catch (e) {
    print(e);
  }
}

String getName(int i) {
  return 'Joney #$i';
}

class Person {
  final String name;
  final List<Person>? _siblings;

  UnmodifiableListView<Person>? get siblings =>
      _siblings == null ? null : UnmodifiableListView(_siblings!);
  const Person({required this.name, List<Person>? siblings})
      : _siblings = siblings;
}
