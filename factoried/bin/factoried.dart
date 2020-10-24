//bug
import 'dart:async';
void main() {
myfuture(1).then((value) => print(value));
event1().then((value) => print(value));
event2();
}

Future<dynamic> myfuture(data) async{
  print("start");
  dynamic getdata =await data+2;
  print("end");
  print(getdata);
  Completer completer = Completer();
  Future.delayed(Duration(seconds: 2),(){
    completer.complete('delayed call');
  }); 
  return completer.future;
}
Future<String> event1() async{
  String data= await Future.value('this is a futrue event');
  return data;
}
Future<String> event2() async{
  return Future.value('this is another futrue event');
}