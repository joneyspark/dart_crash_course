void main(List<String> args) {
  const momAndDad = {
    'mom': Person(),
    'dad': Person(),
  };

  const broAndSisandMyFish = {
    'brother': Person(),
    'sister': Person(),
    'fish': Fishy(),
  };

  final allValues = [momAndDad, broAndSisandMyFish];
  describe(allValues);
}

typedef BreathingThings<T extends CanBreathe> = Map<String, T>;

void describe(Iterable<BreathingThings> values) {
  for (var map in values) {
    for (var keyAndValue in map.entries) {
      print('Will call breathe ${keyAndValue.key}');
      keyAndValue.value.canBreathe();
    }
  }
}

mixin CanBreathe {
  void canBreathe();
}

class Person with CanBreathe {
  const Person();
  @override
  void canBreathe() {
    print('Person is breathing...');
  }
}

class Fishy with CanBreathe {
  const Fishy();
  @override
  void canBreathe() {
    print('Fish is breathing...');
  }
}
