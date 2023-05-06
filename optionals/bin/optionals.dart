import 'package:optionals/optionals.dart' as optionals;

void main(List<String> arguments) {
  // example 1

  const String? name = null;
  print(name);
  print(null);
  int? age = 20;
  age = null;
  something(age);

  String? firstName;
  firstName ??= 'Spark';
  print(firstName);

  String? lastName = 'Hello';
  print(lastName.length);

  String? nullName;
  print(nullName ?? 'Mohammad');

  List<String?>? names = [];
  names.add('Foo');
  names.add(null);
  print(names);

  String? middleName;

  void changeName() {
    middleName = 'Johurul';
  }

  changeName();
  if (middleName?.contains('Johurul') ?? false) {
    print('Middle name contains Johurul');
  }

  String? getFullNameOptional() {
    return 'Foo Bar optional';
  }

  String? getFullName() {
    return 'Foo Bar';
  }

  final fullName = getFullNameOptional() ?? getFullName();
  print(fullName);

  final someName = getFullNameOptional();
  someName.describe();

  T? withAll<T>(
    List<T?> optionals,
    T Function(List<T>) callback,
  ) =>
      optionals.any((e) => e == null) ? null : callback(optionals.cast<T>());

  String getFullNameee(
    String? fname,
    String? lname,
  ) =>
      withAll([fname, lname], (names) => names.join(' ')) ?? 'Empty Name';

  print(getFullNameee(null, null));
  print(getFullNameee(null, 'Spark'));
  print(getFullNameee('Joney', null));
  print(getFullNameee('Joney', 'Spark'));

  String? firstNamee = 'Joney';
  String? lastNameee = null;

  final bla = firstNamee.flatMap((f) => lastNameee.flatMap((l) => '$f $l')) ??
      'Empty from FlatMap';
  print(bla);

  String fullNamDefault(
    String? firstName,
    String? lastName,
  ) =>
      '${firstName.orDefault} ${lastName.orDefault}';

  print(fullNamDefault(null, null));
}

extension Describe on Object? {
  void describe() {
    if (this == null) {
      print('This object is null');
    } else {
      print('$runtimeType:$this');
    }
  }
}

void something(int? age) {
  if (age == null) {
    print('Age is null');
  } else {
    print('Age is not null');
  }
}

extension FlatMap<T> on T? {
  R? flatMap<R>(
    R? Function(T) callback,
  ) {
    final shadow = this;
    if (shadow == null) {
      return null;
    } else {
      return callback(shadow);
    }
  }
}

extension DefaultValues<T> on T? {
  T get orDefault {
    final shadow = this;
    if (shadow != null) {
      return shadow;
    }
    switch (T) {
      case int:
        return 0 as T;
      case double:
        return 0.0 as T;
      case String:
        return '' as T;
      case bool:
        return false as T;
      default:
        throw Exception('No Default value for type $T');
    }
  }
}
