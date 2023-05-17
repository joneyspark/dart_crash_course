void main(List<String> args) {
  print(AnimalType.dog.nameContainUppercaseLetter);
  print(AnimalType.rat.nameContainUppercaseLetter);
  print(AnimalType.codFish.nameContainUppercaseLetter);
}

enum AnimalType {
  dog,
  rat,
  codFish,
}

extension on Enum {
  bool get nameContainUppercaseLetter => name.contains(
        RegExp(r'[A-Z]'),
      );
}
