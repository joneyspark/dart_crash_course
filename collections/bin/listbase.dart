import 'dart:collection';

void main(List<String> args) {
  const notFound = 'Not Found';
  const defaultString = '';

  final myList = SafeList(
    absentValue: notFound,
    defaultValue: defaultString,
    values: ['Bar', 'Foo'],
  );

  print(myList[0]);
  print(myList[1]);
  print(myList[2]);

  myList.length = 4;

  print(myList[3]);

  myList.length = 0;
  print(myList);
  print(myList.first);
  print(myList.last);

  List<String?> names = ['Joney', 'Boney', 'Luckey'];
  names.length = 4;
}

class SafeList<T> extends ListBase<T> {
  final List<T> _list;
  final T absentValue;
  final T defaultValue;

  SafeList(
      {required this.absentValue, required this.defaultValue, List<T>? values})
      : _list = values ?? [];

  @override
  T operator [](int index) => index < _list.length ? _list[index] : absentValue;

  @override
  void operator []=(int index, T value) => _list[index] = value;

  @override
  int get length => _list.length;

  @override
  set length(int newLength) {
    if (newLength <= _list.length) {
      _list.length = newLength;
    } else {
      _list.addAll(
        List.filled(
          newLength - _list.length,
          defaultValue,
        ),
      );
    }
  }

  @override
  T get first => _list.isNotEmpty ? _list.first : absentValue;

  @override
  T get last => _list.isNotEmpty ? _list.last : absentValue;
}
