void main(List<String> args) async {
  final result = await getNames()
      .asyncMap(
    (name) => extractChar(name),
  )
      .fold('', (previous, element) {
    final elements = element.join(' ');
    return '$previous $elements';
  });
  print(result);
}

Stream<String> getNames() async* {
  yield 'Joney';
  yield 'Spark';
}

Future<List<String>> extractChar(String from) async {
  final chars = <String>[];
  for (final char in from.split('')) {
    await Future.delayed(Duration(microseconds: 100));
    chars.add(char);
  }
  return chars;
}
