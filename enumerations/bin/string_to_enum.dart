void main(List<String> args) {
  describe(animalType(fromStr: 'cat'));
  describe(animalType(fromStr: 'dog'));
  describe(animalType(fromStr: 'rat'));
  describe(animalType(fromStr: 'bat'));
}

void describe(AnimalType? animalType) {
  switch (animalType) {
    case AnimalType.dog:
      print('This is Dog');
      break;
    case AnimalType.cat:
      print('This is Cat');
      break;
    case AnimalType.rat:
      print('This is Rat');
      break;
    default:
      print('Unknown animal');
      break;
  }
}

AnimalType? animalType({
  required String fromStr,
}) {
  try {
    return AnimalType.values.firstWhere((element) => element.name == fromStr);
  } catch (e) {
    return null;
  }
}

enum AnimalType {
  dog,
  cat,
  rat,
}
