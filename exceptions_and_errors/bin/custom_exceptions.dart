void main(List<String> args) {
  createPersonAge(age: 20);
  createPersonAge(age: -1);
  createPersonAge(age: 141);
}

class InvalidAgeException implements Exception {
  final int age;
  final String msg;

  InvalidAgeException({
    required this.age,
    required this.msg,
  });

  @override
  String toString() => 'InvalidAgeException $age $msg';
}

void createPersonAge({int age = 0}) {
  try {
    print(Person(age: age).age);
  } on InvalidAgeException catch (exception, stackTrace) {
    print(exception);
    print(stackTrace);
  }
  print('------');
}

class Person {
  final int age;

  Person({required this.age}) {
    if (age < 0) {
      throw InvalidAgeException(
        age: age,
        msg: 'Age must be positive',
      );
    } else if (age > 140) {
      throw InvalidAgeException(
        age: age,
        msg: 'Age must be less than 140',
      );
    }
  }
}
