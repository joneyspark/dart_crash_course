void main(List<String> args) {
  const name = 'joney';
  print(name);
//   invalid code
//   name = 'spark';
}

//fswatch -o bin/ | xargs -n1 -I{} sh -c 'clear; dart bin/example1.dart'
