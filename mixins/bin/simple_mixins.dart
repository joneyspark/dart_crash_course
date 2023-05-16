import 'package:mixins/mixins.dart' as mixins;

void main(List<String> arguments) {
  final person1 = Person();
  person1.jump(speed: 10.0);
  person1.walk(speed: 5.0);
}

mixin HasSpeed {
  abstract double speed;
}

mixin CanJump on HasSpeed {
  void jump({required double speed}) {
    print('$runtimeType is jumping at the speed of $speed');
    this.speed = speed;
  }
}

mixin CanWalk on HasSpeed {
  void walk({required double speed}) {
    print('$runtimeType is walking at the speed of $speed');
    this.speed = speed;
  }
}

class Person with HasSpeed, CanJump, CanWalk {
  @override
  double speed;

  Person() : speed = 0.0;
}
