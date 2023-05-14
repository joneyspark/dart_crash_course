import 'package:classes/classes.dart' as classes;

void main(List<String> arguments) {
  final person1 = Person(name: 'Food', age: 29);
  print(person1.name);
  print(person1.age);

  const foo = Person.foo();
  print(foo.name);
  const bar = Person.bar(20);
  print(bar.name);
  print(bar.age);

  print('-----Null constructor----');

  const other = Person.other();
  print(other.name);
  print(other.age);
}

class Person {
  final String name;
  final int age;

  Person({required this.name, required this.age});

  const Person.foo()
      : name = 'Foo',
        age = 20;

  const Person.bar(this.age) : name = 'Bar';

  const Person.other({
    String? name,
    int? age,
  })  : name = name ?? 'Joney',
        age = age ?? 30;
}
