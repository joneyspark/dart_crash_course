void main(List<String> args) {
  final wishkers = Cat(age: 2);
  print(wishkers.age);
  wishkers.incrementAge();
  print(wishkers.age);
}

mixin HasAge {
  abstract int age;
  void incrementAge() => age++;
}

class Cat with HasAge {
  @override
  int age = 0;
  Cat({required this.age});
}
