import 'dart:convert';

import 'dart:io';
import 'dart:convert';
import 'dart:async';
void main(List<String> args) async{
  String value= await loadString('hi');
  print(value);
  await addAsync(30).then((x) =>x(50)).then((y) => print(y));
  Function x= await addAsync(50);
  int z= await x(40);
  print(z);
}
Future<String> loadString(String str) async {
  return Future.delayed(Duration(seconds: 1)).then((_) {
    return 'String: $str';
  });
}
Future<Function> addAsync(int x,) async{
return (int y) async => x+y;
}

Stream<int> exampleStream(int x){

  for(int i=0; i<=x;i++){
    yield i;
  }
}