void main(List<String> args) {
  const int someInter = 10;
  print(someInter);
  const double someDouble = 10.10;
  print(someDouble);
  const String someString = 'Hello';
  print(someString);
  const bool someBoolean = true;
  print(!someBoolean);
  const List<int> someList = [1, 2, 3, 4, 5];
  print(someList);

  const Map<String, String> someMap = {'foo': 'bar'};
  print(someMap['foo']);

  const Set<int> someSet = {1, 2, 3, 4};
  print(someSet.length);

  const dynamic someNull = null;
  print(someNull);

  const Symbol someSymbol = #someNull;
  print(someSymbol);
}
