void main(List<String> args) {
  sort(ascending: true);
  sort(ascending: false);
}

const ages = [12, 45, 67, 90, 56];
const names = ['Foo', 'Bar', 'Baz'];
const distance = [3.2, 10.2, 1.3, 4.5];

int isLessThan<T extends Comparable>(T a, T b) => a.compareTo(b);
int isGreaterThan<T extends Comparable>(T a, T b) => b.compareTo(a);

void sort({required bool ascending}) {
  final comparator = ascending ? isLessThan : isGreaterThan;
  print([...ages]..sort(comparator));
  print([...names]..sort(comparator));
  print([...distance]..sort(comparator));
}
