void main(List<String> args) {
  for (var name in getNames()) {
    print(name);
  }
}

Iterable<String> getNames() sync* {
  print('Producing Bob');
  yield ('Bob');
  yield ('Jane');
  yield ('Jane');
  print('producing getTemplates');
  yield* getTemplateName();
}

Iterable<String> getTemplateName() sync* {
  print('Producing Bob');
  yield ('Bob');
  yield ('Jane');
  yield ('Jane');
}
