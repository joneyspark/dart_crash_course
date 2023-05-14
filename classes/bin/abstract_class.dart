void main(List<String> args) {
  final car = Car();
  final motorcycle = Motorcycle();
  car.accelerate();
  car.deccelerate();

  motorcycle.accelerate();
  motorcycle.deccelerate();
}

abstract class Vehicle {
  final VehicleType type;

  const Vehicle({required this.type});

  void accelerate() => print('$type is accelerating');
  void deccelerate() => print('$type is deccelerating');
}

class Car extends Vehicle {
  const Car() : super(type: VehicleType.car);
}

class Motorcycle implements Vehicle {
  @override
  void accelerate() {
    print('Motorcycle is accelerating');
  }

  @override
  void deccelerate() {
    print('Motorcycle is decelerating');
  }

  @override
  VehicleType get type => VehicleType.motorcycle;
}

enum VehicleType { car, motorcycle, truck, bicycle }
