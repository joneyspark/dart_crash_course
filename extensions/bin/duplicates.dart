void main(List<String> args) {
  print([1, 2, 3].containDuplicateValues);
  print([1, 2, 3, 1].containDuplicateValues);
  print(['Foo', 'Bar'].containDuplicateValues);
  print(['Foo', 'Bar', 'Foo'].containDuplicateValues);
}

extension on Iterable {
  bool get containDuplicateValues => toSet().length != length;
}
