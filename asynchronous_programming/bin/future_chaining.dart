void main(List<String> args) async {
  final length = await calculateLength(await getFullNames());
  print(length);

  final result = await getFullNames().then(
    (value) => calculateLength(value),
  );
  print(result);
}

Future<String> getFullNames() => Future.delayed(
      Duration(seconds: 1),
      () => 'Joney Spark',
    );

Future<int> calculateLength(String value) => Future.delayed(
      Duration(seconds: 1),
      () => value.length,
    );
