import 'dart:async';

void main(List<String> args) async {
  await for (final name in getNames().absorbErrorsUsingHandleError()) {
    print(name);
  }

  print('-------------');

  await for (final name in getNames().absorbErrorsUsingHandlers()) {
    print(name);
  }
}

extension AbsorbErrors<T> on Stream<T> {
  Stream<T> absorbErrorsUsingHandleError() => handleError(
        (_, __) {},
      );

  Stream<T> absorbErrorsUsingHandlers() => transform(
        StreamTransformer.fromHandlers(
          handleError: (_, __, sink) => sink.close(),
        ),
      );
}

Stream<String> getNames() async* {
  yield 'Joney';
  yield 'Boney';
  yield 'Roney';
  throw 'All out of names';
}
