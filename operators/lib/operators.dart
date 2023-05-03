void main(List<String> args) {
  const age1 = 20;
  const age2 = 30;

  print(age1 + age2);
  print(age1 + age2 + 30);
  print(age1 - age2);
  print(age1 * age2);
  const double divided = age1 / age2;
  print(divided);
}


//fswatch -o bin/ | xargs -n1 -I{} sh -c 'clear; dart bin/example1.dart'