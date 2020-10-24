//bug
import 'dart:async';

void main(){
bool isitover = false;
print('시작');
StreamController _streamController =StreamController();
StreamController _streamController2 =StreamController();
_streamController.stream.listen((time) async{
  await Future.delayed(
  Duration(seconds: time),
  );
  print('빵굽기');
  isitover=true;
  print(isitover);
  _streamController2.stream.listen((event) { 
    if(event=='a'){
      print('끝');
    }
    else if(event=='b'){
      print('...');
    }    
  });
  _streamController2.add(isitover==true?'a':'b');
 });
 

  _streamController.add(3);

}
Future<dynamic> makecake(time) async{
  print('start');
  await Future.delayed(Duration(seconds: time),
  );

}



