void main(List<String> args) {
  final string = 'abracadabra';
  var result = '';
  for (var char in string.split('')) {
    if (char == 'a' || char == 'b' || char == 'c') {
    } else {
      result += char;
    }
  }
  print(result);

  print('------Collection Comprehensions-------');
  var cResult = {
    for (var char in string.split('')) 'abc'.contains(char) ? null : char
  }
    ..removeAll([null])
    ..cast<String>();

  print(cResult);

  final allNumbers = Iterable.generate(100);

  final evenNumbers = [
    for (var number in allNumbers)
      if (number % 2 == 0) number
  ];

  final evenNumberFunc = allNumbers.where(
    (number) => number % 2 == 0,
  );
  final oddNumbers = [
    for (var number in allNumbers)
      if (number % 2 != 0) number
  ];

  final oddNumberFunc = allNumbers.where(
    (number) => number % 2 != 0,
  );

  print(evenNumbers);
  print(evenNumberFunc);
  print(oddNumbers);
  print(oddNumberFunc);

  print('-----Map Comprehensions--------');

  final names = [
    'joney spark',
    'boney',
    'luckey',
  ];

  final namesLengths = {for (final name in names) name: name.length};

  print(namesLengths);
}
