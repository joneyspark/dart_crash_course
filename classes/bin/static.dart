void main(List<String> args) {
  print(Car.carInstantiated);
  Car(name: 'my car');
  print(Car.carInstantiated);
  Car(name: 'Your car');
  print(Car.carInstantiated);
}

class Car {
  static int _carInstantiated = 0;
  static int get carInstantiated => _carInstantiated;
  static void _incrementCarInstantiated() => _carInstantiated++;

  String name = '';

  Car({required this.name}) {
    _incrementCarInstantiated();
  }
}
