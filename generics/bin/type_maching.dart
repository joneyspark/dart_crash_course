void main(List<String> args) {
  print(doTypeMatch(1, 2));
  print(doTypeMatch(1, 'spark'));
  print(doTypeMatch(1, ''));
  print(doTypeMatch(1, 1));
}

bool doTypeMatch<L, R>(L a, R b) => L == R;
