import 'dart:async';

void main(List<String> arguments) {
  StreamController ctrl = StreamController();
  ctrl.stream.listen((event) =>print(event));
  Future adddata() async{
     for(int i=0;i<10;i++){
  await Future.delayed(Duration(seconds: 1));
  ctrl.add(i);
    }
   s
  }
 adddata();
 
}



