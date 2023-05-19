import 'package:exceptions_and_errors/exceptions_and_errors.dart'
    as exceptions_and_errors;

void main(List<String> arguments) {
  createPersonAge(age: 20);
  createPersonAge(age: -1);
  createPersonAge(age: 141);
}

void createPersonAge({int age = 0}) {
  try {
    print(Person(age: age).age);
  } catch (e) {
    print(e.runtimeType);
    print(e);
  }
  print('------');
}

class Person {
  final int age;

  Person({required this.age}) {
    if (age < 0) {
      throw Exception('Age must be positive');
    } else if (age > 140) {
      throw Exception('Age must be less than 140');
    }
  }
}
