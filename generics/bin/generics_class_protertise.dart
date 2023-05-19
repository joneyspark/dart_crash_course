void main(List<String> args) {
  final age = Person(age: 20.3);
  print(age.age);
  print(age.ageRound);
}

class Person<T extends num> {
  final T age;

  const Person({required this.age});

  int get ageRound => age.round();
}
