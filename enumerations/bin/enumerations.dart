import 'package:enumerations/enumerations.dart' as enumerations;

void main(List<String> arguments) {
  final woof = Animal(
    name: 'Woof',
    type: AnimalType.dog,
  );

  switch (woof.type) {
    case AnimalType.dog:
      print('This is a Dog');
      break;
    case AnimalType.cat:
      print('This is a Cat');
      break;
    case AnimalType.cow:
      print('This is a Cow');
      break;
  }

  final foo = Person(name: 'Joney', car: Car.teslaModelX);

  switch (foo.car) {
    case Car.teslaModelX:
      print('This is Tesla X Model ${foo.car}');
      break;
    case Car.teslaModelY:
      print('This is Tesla Y Model ${foo.car}');
      break;
  }
}

enum AnimalType {
  dog,
  cat,
  cow,
}

class Animal {
  final String name;
  final AnimalType type;

  const Animal({required this.name, required this.type});
}

// Person class
class Person {
  final String name;
  final Car car;

  const Person({required this.name, required this.car});
}

// Enum Enhanched

enum Car {
  teslaModelX(
    manufacture: 'Tesla',
    model: 'Model X',
    year: 2022,
  ),
  teslaModelY(
    manufacture: 'Tesla',
    model: 'Model Y',
    year: 2023,
  );

  final String manufacture;
  final String model;
  final int year;

  const Car({
    required this.manufacture,
    required this.model,
    required this.year,
  });

  @override
  String toString() => 'Car: $manufacture $model $year';
}
