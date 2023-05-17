void main(List<String> args) {
  const jack = Person(
    name: 'jack',
    age: 20,
  );

  print(ShortDesc(jack).description);
  print(LongDesc(jack).description);
}

class Person {
  final String? name;
  final int? age;
  const Person({required this.name, required this.age});
}

// short description of a person
extension ShortDesc on Person {
  String get description => '$name ($age)';
}

// long description of a person
extension LongDesc on Person {
  String get description => '$name is ($age) years of old';
}
