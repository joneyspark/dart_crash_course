void main(List<String> args) async {
  await for (final name in allNames()) {
    print(name);
  }
}

Stream<String> maleNames() async* {
  yield 'Joney';
  yield 'Boney';
  yield 'Roney';
  yield 'Toney';
}

Stream<String> femaleNames() async* {
  yield 'Farhana';
  yield 'Jui';
  yield 'Luckey';
  yield 'Shoma';
}

Stream<String> allNames() async* {
  yield* maleNames();
  yield* femaleNames();
}
