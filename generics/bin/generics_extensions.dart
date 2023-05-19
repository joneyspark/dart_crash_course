void main(List<String> args) {
  const tuple = Tuple(left: 1, right: 10);
  print(tuple);
  final swapeed = tuple.swap();
  print(swapeed);

  print(tuple.sum);
  print(swapeed.sum);
}

class Tuple<L, R> {
  final L left;
  final R right;
  const Tuple({required this.left, required this.right});

  @override
  String toString() {
    return 'Tuple, left $left, right = $right';
  }
}

extension<L, R> on Tuple<L, R> {
  Tuple<R, L> swap() => Tuple(left: right, right: left);
}

extension<L extends num, R extends num> on Tuple<L, R> {
  num get sum => left + right;
}
