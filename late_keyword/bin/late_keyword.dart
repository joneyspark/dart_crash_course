import 'package:late_keyword/late_keyword.dart' as late_keyword;

void main(List<String> arguments) {
  String provideName() {
    print('Late Function invoke');
    return 'Foo Bar';
  }

  print('Before');
  late String name = provideName();
  print('After');
  print(name);

  final person = Person();
  print(person.age);
  print(person.description);

  final person1 = Person1();
  print(person1.fullName);
  print(person1.fName);
  print(person1.lName);

  final person2 = Person2();
  print(person2.description = 'Description 1');
  print(person2.description = 'Description 2');

  final woof = Dog();
  print(woof.description = 'Woof Descrition 1');

  late final bool isTeenager;
  const age = 12;
  if (age >= 13 && age <= 19) {
    isTeenager = true;
  } else if (age < 13) {
    isTeenager = false;
  }
  try {
    isTeenager = false;
    print('isTeenager = $isTeenager');
  } catch (e) {
    print(e);
  }

  final johnDoe = Person3(name: 'Johhny');
  final sparkDoe = Person3(name: 'Spark');

  final doeFamily = WrongImplementationOfFamily(members: [
    johnDoe,
    sparkDoe,
  ]);

  print(doeFamily);
  print(doeFamily.membersCount);

  final smithDoe = Person3(name: 'Johhny');
  final joneykDoe = Person3(name: 'Spark');

  final smithFamily = RightImplementationOfFamily(members: [
    smithDoe,
    joneykDoe,
  ]);

  print(smithFamily);
  print(smithFamily.membersCount);
}

class Person {
  late String description = heavyCalculationToDescription();
  final int age;

  Person({this.age = 18}) {
    print('Constructor called');
  }

  String heavyCalculationToDescription() {
    print('Invoke HeavyCalculation to Description');
    return 'function called';
  }
}

class Person1 {
  late String fullName = _getFullName();
  late String fName = fullName.split(' ').first;
  late String lName = fullName.split(' ').last;
  String _getFullName() {
    print('called _getFull Name');
    return 'Foo bar 1';
  }
}

class Person2 {
  late String description;
}

class Dog {
  late final String description;
}

class Person3 {
  String name;
  Person3({required this.name});
}

class WrongImplementationOfFamily {
  final Iterable<Person3> members;
  late int membersCount;

  WrongImplementationOfFamily({required this.members}) {
    membersCount = getMembersCount();
  }

  int getMembersCount() {
    print('Call ger Members count');
    return members.length;
  }
}

class RightImplementationOfFamily {
  final Iterable<Person3> members;
  late int membersCount = getMembersCount();

  RightImplementationOfFamily({required this.members});

  int getMembersCount() {
    print('Call ger Members count');
    return members.length;
  }
}
