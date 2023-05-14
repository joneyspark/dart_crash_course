void main(List<String> args) {
  final vehicle = Vechicle(4);
  print(vehicle);
  print(vehicle.toString());
  print('-----------');

  print(Car(3));
  print(Bycycle());
}

class Vechicle {
  final int wheelCount;
  Vechicle(this.wheelCount);

  @override
  String toString() {
    if (runtimeType == Vechicle) {
      return '$runtimeType with $wheelCount wheel';
    } else {
      return super.toString();
    }
    // return '$runtimeType with $wheelCount wheel';
  }
}

class Car extends Vechicle {
  Car(super.wheelCount);
}

class Bycycle extends Vechicle {
  Bycycle() : super(2);
}
