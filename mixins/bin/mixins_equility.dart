import 'package:uuid/uuid.dart';

void main(List<String> args) {
  final uuid1 = Uuid().v4();
  final uuid2 = Uuid().v4();

  final person1 = Person(
    id: uuid1,
    name: 'Joney',
    age: 30,
  );

  final personAgain = Person(
    id: uuid1,
    name: 'joney',
    age: 30,
  );

  final person2 = Person(
    id: uuid2,
    name: 'Joney',
    age: 30,
  );

  if (person1 == person2) {
    print('person1 == person2');
  } else {
    print('person1 != person2');
  }
  if (person1 == personAgain) {
    print('person1 == personAgain');
  } else {
    print('person1 != personAgain');
  }
  if (person2 == personAgain) {
    print('person2 == personAgain');
  } else {
    print('person2 != personAgain');
  }
}

mixin HasIdentifier {
  String get id;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is HasIdentifier &&
          runtimeType == other.runtimeType &&
          id == other.id;
}

class Person with HasIdentifier {
  @override
  final String id;
  final String name;
  final int age;

  Person({
    required this.id,
    required this.name,
    required this.age,
  });
}
