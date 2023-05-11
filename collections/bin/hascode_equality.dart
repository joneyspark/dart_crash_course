void main(List<String> args) {
  final person = Person(name: 'Joney', age: 29);
  final dog = Dog(name: 'Joney', age: 29);

  print(person.hashCode);
  print(dog.hashCode);
  final beings = {person, dog};
  print(beings);
  print(identical(person, dog));
}

class Person {
  final String name;
  final int age;
  Person({required this.name, required this.age});

  @override
  String toString() => 'Person: $name, $age';

  @override
  int get hashCode => Object.hash(name, age);

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is Person && name == other.name && age == other.age;
}

class Dog {
  final String name;
  final int age;
  Dog({required this.name, required this.age});

  @override
  String toString() => 'Dog: $name, $age';

  @override
  int get hashCode => Object.hash(name, age);

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is Dog && name == other.name && age == other.age;
}
