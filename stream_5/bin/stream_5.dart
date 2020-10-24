import 'dart:async';

void main() async{
  List mylist=[];
  Carmade carmade= Carmade();
  Combinecar combinecar = Combinecar();
  combinecar;
  ctrl2.stream.listen((e)=>mylist.add(e));
  if(mylist.length==3){
    //tire,door
  carmade.makecar(mylist[0], mylist[1], mylist[2]);
  }

// 결론 async,await은 그것이 붙어 있는 함수에만 적용되어 그 함수
// 내부에서 실행되는 것이 끝나기 까지 기다리는 것이다.
// 즉, 실행함수가 예를들어 main함수가 async, awiat 이 없다면, 
// 동시에 실행되는 것이다. 

}
StreamController ctrl2 = StreamController();

  Future tirefac() async {
    for(num i=0;i<3;i++){
await Future.delayed(Duration(seconds: 10));
  print('tire ready');
  ctrl2.add('tire');
    }
  
  
}

Future bodyfac() async{
   for(num i=0;i<3;i++){
  await Future.delayed(Duration(seconds: 15));
  print('body ready');
   ctrl2.add('body');   
    }
  
  
}
Future doorfac() async{
   for(num i=0;i<3;i++){
  await Future.delayed(Duration(seconds: 20));
  print('door ready');
   ctrl2.add('door');   
   
    }
  
}
class Combinecar{
  dynamic tiredata= tirefac();
  dynamic bodydata= bodyfac();
  dynamic doordata= doorfac();

}
class Carmade{ 
  makecar(a,b,c){
    print('$a,$b,$c, combined carmade!');
  }

}

//공장을 예를 들어보자, 자동차 공장이라고 한다면, 차문을 만들 동안
//차 바퀴도 만들고, 차 바퀴 만들동안, 차 몸체도 만든다, 즉 그것들이 다 만들어지면 합치되,
//그 전에는 다 같이 작용함;

//tire fac 10s
//body fac 15s
//door fac 20s

//combine-> car made fuc
//car made func

//future. 뒤에 value 같은 Duration 말고 다른 거 보기
//yeild 랑 async* 공부하기



//tire, body, door모두 공장 시작이 같이 될 방법을 찾아야 함.
//main fuc에서 data return 받을때 처럼 awaot 말고 일반 fuction 호출
//carmade2잘됨
