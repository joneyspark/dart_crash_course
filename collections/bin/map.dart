void main(List<String> args) {
  final info = {
    'name': 'Joney',
    'age': 29,
  };

  print(info);
  print(info['name']);
  print('---------------');

  print(info.keys);
  print(info.values);

  print('--------------');

  info.putIfAbsent('height', () => '5.5"');
  print(info);

  if (info.containsKey('height')) {
    print('Height is ${info['height']}');
  } else {
    print("Height not found");
  }

  print(info['weight']);

  print('--------------');

  final mapWithIntKeys = {10: 20, 20: 30};

  print(mapWithIntKeys[10]);
  print(mapWithIntKeys);
}
