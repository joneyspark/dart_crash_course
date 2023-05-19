void main(List<String> args) async {
  final db = Database();
  try {
    await db.getData();
  } on DatabaseNotOpenException {
    print('We forget to open database');
  } finally {
    await db.close();
  }
}

class Database {
  bool _isOpened = false;

  Future<void> open() {
    return Future.delayed(Duration(seconds: 1), () {
      _isOpened = true;
      print('Database Opened');
    });
  }

  Future<void> close() {
    return Future.delayed(Duration(seconds: 1), () {
      _isOpened = false;
      print('Database Closed');
    });
  }

  Future<String> getData() {
    if (!_isOpened) {
      throw DatabaseNotOpenException();
    }
    return Future.delayed(
      Duration(seconds: 1),
      () => 'Data',
    );
  }
}

class DatabaseNotOpenException implements Exception {
  @override
  String toString() => 'DatabaseNotOpenException';
}
