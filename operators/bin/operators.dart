import 'package:operators/operators.dart' as operators;
//fswatch -o bin/ | xargs -n1 -I{} sh -c 'clear; dart bin/example1.dart'

void main(List<String> args) {
  const age1 = 64.1;
  const age2 = 30.2;

  print(age1 + age2);
  print(age1 + age2 + 30);
  print(age1 - age2);
  print(age1 * age2);
  const double divided = age1 / age2;
  print(divided);

  const intDivided = age1 ~/ age2;
  print(intDivided);

  /// 4 types of operators
  /// unary prfix, unary postfix, binary infix, compound assignmen

  /// unary prefix
  int age3 = 30;
  print(--age3);
  print(!true);
  print(!false);
  print(++age3);

  // unary bitwise complement prefix operator
  // print(~1);

  // print(-age3);
  // print(age3);
  // print(-(-age3));

  /// unary postfix
  print("unary postfix");
  int age4 = 40;
  print(age4--);
  print(age4);
  print(age4++);
  print(age4);

  // binary infix operators
  print('Birnary infix operator');
  const int age5 = 50;
  print(age5 + 20);
  print(age5 - 20);
  print(age5 * 20);
  print(age5 / 20);
  print(age5 ~/ 20);
  print(age5 % 20);
  print(age5 == 20);
  print(age5 != 20);
  print(age5 > 20);
  print(age5 < 20);
  print(age5 >= 20);
  print(age5 <= 20);

  // bitwise infix operator

  print(age5 & 20); //bitwise AND 1 & 1 = 1, 0 & 1 = 0, 1 & 0 = 0, 0 & 0 = 0
  print(age5 | 20); // bitwise OR 1 | 1 = 1, 0 | 1 = 1, 1 | 0 = 1, 0 | 0 = 0
  print(age5 ^ 20); // bitwise XOR 1 ^ 1 = 0, 0 ^ 1 = 1, 1 ^ 0 = 1, 0 ^ 0 = 0

  print(age5 << 20); // bitwise letf shift;
  print(age5 >> 20); // bitwise right shift;

  /// 0110 0011
  /// shift left by 1
  /// 1100 0110

  var myAge = 30;
  print(myAge); // 30
  print(myAge ~/= 2); // 15
  print(myAge *= 2); // 30
  print(myAge += 4); // 34
  print(myAge &= 2); // 2 (0010 0010) & (0000 0010)
  print(myAge |= 4); // 6
  print(myAge ^= 10); // 12
  print(myAge -= 10); // 2
}
