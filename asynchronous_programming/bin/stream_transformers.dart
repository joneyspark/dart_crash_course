void main(List<String> args) async {
  await for (final name in names.map(
    (name) => name.toUpperCase(),
  )) {
    print(name);
  }
}

Stream<String> names = Stream.fromIterable([
  'Joney',
  'Boney',
  'Roney',
  'Toney',
]);
