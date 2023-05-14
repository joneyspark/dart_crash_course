void main(List<String> args) {
  final mom = Mom();
  print(mom.role);
  final dad = Dad();
  print(dad.role);
}

enum Role { mom, dad, son, daughter, brother, sister }

class Person {
  final Role role;
  const Person({required this.role});
}

class Mom extends Person {
  Mom() : super(role: Role.mom);
}

class Dad extends Person {
  Dad() : super(role: Role.dad);
}
