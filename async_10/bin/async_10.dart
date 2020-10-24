void main(List<String> arguments) {
  f();
  s();
  t();
}
Future f() async {
  await Future.delayed(Duration(seconds: 5));
  print('1');

}

Future s() async {
  await Future.delayed(Duration(seconds: 10));
  print('2');

}

Future t() async {
  await Future.delayed(Duration(seconds: 15));
  print('3');

}
