import 'package:controlflow/controlflow.dart' as controlflow;

void main(List<String> arguments) {
  // control flow
  // if (condition) {

  // } else {

  // }

  // for loop

  const names = ['joney', 'spark', 'boney', 'baz', 'luckey', 'jui'];
  for (var i = 0; i < names.length; i++) {
    print(names[i]);
  }

  print('Reversed');
  print('-------------------');
  for (var i = names.length - 1; i >= 0; i--) {
    print(names[i]);
  }

  print('--------------');

  for (var i = 0; i < names.length; i += 2) {
    print(names[i]);
  }

  print('--------------');

  for (var name in names) {
    if (name.startsWith('b')) {
      continue;
    }
    print(name);
  }

  print('--------------');

  for (var name in names) {
    if (name.startsWith('b')) {
      break;
    }
    print(name);
  }

  print('.............');

  for (var name in names.reversed) {
    print(name);
  }

  print('.............');
  for (int value in Iterable.generate(10)) {
    print(value);
  }
  print('.............');

  print('while loop');

  print('.......');

  var counter = 0;
  while (counter < names.length) {
    print(names[counter]);
    counter++;
  }

  print('.....prefix counter....');

  counter = -1;

  while (++counter < names.length) {
    print(names[counter]);
  }

  print('while loop reversed');

  counter = names.length;
  while (--counter >= 0) {
    print(names[counter]);
  }

  print('Do while loop ........');
  counter = 0;

  do {
    print(names[counter++]);
    if (counter == 2) {
      break;
    }
  } while (counter < names.length);

  print('do while loop continue...');
  do {
    final name = names[counter++];
    if (name == 'spark') {
      continue;
    }
    print(name);
  } while (counter < names.length);

  print('Switch case......');
  describe(1);
  describe(1.1);
  describe('hello');
  describe(false);
  describe({'key': 'value'});
  describe([1, 23, 4, 5]);

  // foor loop over map

  const info = {
    'name': 'Md Johrul Islam',
    'age': 29,
    'isMarried': 'Yes',
    'Height': '5.4"',
    'address': {
      'Street': '145, Medina Road',
      'City': 'Birmingham',
      'Country': 'United Kindom',
    }
  };

  for (final entry in info.entries) {
    print('${entry.key} : ${entry.value}');
  }
}

void describe<T>(T value) {
  switch (T) {
    case int:
      print('This is an integer');
      break;
    case double:
      print('This is a double');
      break;
    case String:
      print('This is a String');
      break;
    case bool:
      print('This is Boolean');
      break;
    case Map<String, String>:
      print('This is Map');
      break;
    default:
      print('This is something else');
  }
}
