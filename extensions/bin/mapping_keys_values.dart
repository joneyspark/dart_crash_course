const json = {
  'name': 'Joney',
  'age': 29,
};
void main(List<String> args) {
  final String? ageAsString = json.find<int>(
    'age',
    (int age) => age.toString(),
  );

  print(ageAsString);

  final String? helloName = json.find('name', (String name) => 'Hello $name');
  print(helloName);

  final String? address =
      json.find('address', (String address) => 'Hello $address');
  print(address);
}

extension Find<K, V, R> on Map<K, V> {
  R? find<T>(
    K key,
    R? Function(T value) cast,
  ) {
    final value = this[key];
    if (value != null && value is T) {
      return cast(value as T);
    } else {
      return null;
    }
  }
}
