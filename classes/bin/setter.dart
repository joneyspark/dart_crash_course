void main(List<String> args) {
  final car = Car();
  try {
    car.dirve(speed: 10);
    car.dirve(speed: -1);
  } catch (e) {
    print(e);
  }
}

class Car {
  int _speed = 0;
  int get speed => _speed;
  set speed(int newSpeed) {
    if (newSpeed < 0) {
      throw Exception('Speed can not be negative');
    } else {
      _speed = newSpeed;
    }
  }

  void dirve({required int speed}) {
    this.speed = speed;
    print('Accelerating to $speed km/h');
  }

  void stop() {
    speed = 0;

    print('Stop');
  }
}
