void main(List<String> args) {
  final person1 = Person(firstName: 'Joney', lastName: 'Spark');
  print(person1.fullName);
}

class Person {
  final String firstName;
  final String lastName;

  String get fullName => '$firstName $lastName';

  Person({required this.firstName, required this.lastName});
}
