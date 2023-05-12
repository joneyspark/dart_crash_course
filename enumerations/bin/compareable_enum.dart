void main(List<String> args) {
  print(TeslaCars.values);
  print([...TeslaCars.values]..sort());
}

enum TeslaCars implements Comparable<TeslaCars> {
  modelY(weightInKg: 2.2),
  modelX(weightInKg: 2.5),
  model1(weightInKg: 2.1),
  model0(weightInKg: 0.2);

  final double weightInKg;
  const TeslaCars({required this.weightInKg});

  @override
  int compareTo(TeslaCars other) => weightInKg.compareTo(other.weightInKg);
}
