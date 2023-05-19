void main(List<String> args) {
  const one = keyAndValue(1, 2);
  const two = keyAndValue(1, 2.2);
  const three = keyAndValue(1, 'Foo');
  const keyAndValue four = keyAndValue(1, 1);
  print(one);
  print(two);
  print(three);
  print(four);
}

typedef keyAndValue<K, V> = MapEntry<K, V>;
