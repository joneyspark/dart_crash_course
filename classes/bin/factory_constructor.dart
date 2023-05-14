void main(List<String> args) {
  print(Vehicle.truck());
  print(Vehicle.car());
}

class Vehicle {
  const Vehicle();
  factory Vehicle.car() => Car();
  factory Vehicle.truck() => Truck();

  @override
  String toString() => 'Vehicle of type $runtimeType';
}

class Car extends Vehicle {
  const Car();
}

class Truck extends Vehicle {
  const Truck();
}
