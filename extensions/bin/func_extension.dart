import 'dart:math';

void main(List<String> args) {
  print(add.callWithRandomValue());
  print(substruct.callWithRandomValue());
}

int add(a, b) => a + b;
int substruct(a, b) => a - b;

typedef IntFunction = int Function(int, int);

extension on IntFunction {
  int callWithRandomValue() {
    final rnd1 = Random().nextInt(100);
    final rnd2 = Random().nextInt(100);
    print('Random values = $rnd1, $rnd2');
    return call(rnd1, rnd2);
  }
}
