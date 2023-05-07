import 'package:functions/functions.dart' as functions;

void main(List<String> arguments) {
  printHello();
  print(doNothing());
  sayHello();
  sayHello(name: null);
  sayHello(name: 'Joney');

  // you would never invoke the function and assign
  //the result to a variable
  // final void value = greet();

  describeFully('Johurul', lastName: 'Islam');

  print(minus(30, 30));
  print(plus(20, 30));

  final a = perfomOperation(30, 30, minus);
  final b = perfomOperation(20, 30, plus);
  print(a);
  print(b);

  final fooo = doSomething(20, 30);
  print(fooo());
}

void printHello() {
  print("Hello");
}

dynamic doNothing() {}

void sayHello({String? name}) {
  print('Hello, $name');
}

void describeFully(String firstname, {String? lastName = 'Bar'}) {
  print('Hello $firstname $lastName');
}

int minus([int lhs = 10, int rhs = 5]) => lhs - rhs;
int plus([int a = 4, int b = 4]) => a + b;

int perfomOperation(int a, int b, int Function(int, int) operation) =>
    operation(a, b);

int Function() doSomething(int a, int b) => () => a + b;
