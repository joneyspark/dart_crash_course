void main(List<String> args) async {
  await for (final char
      in getNames().asyncExpand((name) => getCharacters(name))) {
    print(char);
  }
}

Stream<String> getCharacters(String fromString) async* {
  for (var i = 0; i < fromString.length; i++) {
    await Future.delayed(Duration(milliseconds: 300));
    yield fromString[i];
  }
}

Stream<String> getNames() async* {
  await Future.delayed(Duration(microseconds: 200));
  yield 'Joney';
  await Future.delayed(Duration(microseconds: 200));
  yield 'Spark';
}
