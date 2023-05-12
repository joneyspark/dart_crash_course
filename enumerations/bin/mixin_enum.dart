void main(List<String> args) {
  AnimalType.dog.jump();
  AnimalType.cat.jump();

  try {
    AnimalType.fish.jump();
  } catch (e) {
    print(e);
  }

  AnimalType2.cat
    ..jump()
    ..run();

  AnimalType2.dog
    ..jump()
    ..run();

  AnimalType2.rabbit
    ..jump()
    ..run();
}

mixin canJam {
  int get feetCount;

  void jump() {
    if (feetCount < 1) {
      throw Exception('Can not Jump');
    } else {
      print('Can Jumped');
    }
  }
}

enum AnimalType with canJam {
  cat(feetCount: 4),
  dog(feetCount: 4),
  fish(feetCount: 0);

  @override
  final int feetCount;

  const AnimalType({required this.feetCount});
}

enum AnimalType2 {
  dog,
  cat,
  rabbit;

  void run() {
    print('$this Running....');
  }
}

extension Jump on AnimalType2 {
  void jump() {
    print('$this is Jumping');
  }
}
