void main(List<String> arguments) async{
  print('start');
  print('hoi');
  await returndata().then((value) => print(value));
  
}
Future<String> returndata() async{
  await Future.delayed(Duration(seconds: 2));
  return 'returned data';
}
