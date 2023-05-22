import 'package:asynchronous_programming/asynchronous_programming.dart'
    as asynchronous_programming;

void main(List<String> arguments) async {
  print(await getNames());
  print(await getAddress());
  // print(await getPhoneNumber());
  print(await getCity());
  print(await getCountry());
}

Future<String> getNames() async => 'Joney Spark';
Future<String> getAddress() => Future.value('123, main st');

Future<String> getPhoneNumber() => Future<String>.delayed(
      Duration(seconds: 1),
      () => '555-555-555',
    );

Future<String> getCity() async {
  Future.delayed(Duration(seconds: 1));
  return 'New York';
}

Future<String> getCountry() async => 'United Kindom';
