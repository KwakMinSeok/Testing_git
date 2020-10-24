void main() async{
  Combinecar combinecar = Combinecar();
  CarMade2 carMade2 = CarMade2();
  await combinecar;
  carMade2;
// 결론 async,await은 그것이 붙어 있는 함수에만 적용되어 그 함수
// 내부에서 실행되는 것이 끝나기 까지 기다리는 것이다.
// 즉, 실행함수가 예를들어 main함수가 async, awiat 이 없다면, 
// 동시에 실행되는 것이다. 
}

//공장을 예를 들어보자, 자동차 공장이라고 한다면, 차문을 만들 동안
//차 바퀴도 만들고, 차 바퀴 만들동안, 차 몸체도 만든다, 즉 그것들이 다 만들어지면 합치되,
//그 전에는 다 같이 작용함;

//tire fac 10s
//body fac 15s
//door fac 20s

//combine-> car made fuc
//car made func
Future tirefac() async {
  await Future.delayed(Duration(seconds: 10));
  print('tire ready');
  return 'tire';
}

Future bodyfac() async{
  await Future.delayed(Duration(seconds: 15));
  print('body ready');
  return 'body';
}
Future doorfac() async{
  await Future.delayed(Duration(seconds: 20));
  print('door ready');
  return 'door';
}
//future. 뒤에 value 같은 Duration 말고 다른 거 보기
//yeild 랑 async* 공부하기

class Combinecar{
  dynamic tiredata= tirefac();
  dynamic bodydata= bodyfac();
  dynamic doordata= doorfac();

}

combine() async{
  dynamic tiredata= tirefac();
  dynamic bodydata= bodyfac();
  dynamic doordata= doorfac();


}

carmade(a,b,c) {
  print('$a $b $c combined-> car made !');
}
//tire, body, door모두 공장 시작이 같이 될 방법을 찾아야 함.
//main fuc에서 data return 받을때 처럼 awaot 말고 일반 fuction 호출
//carmade2잘됨
class CarMade2 {
  printdata(Combinecar com) async{
     await print('${com.tiredata},${com.tiredata},${com.doordata} combined-> carmade!');
  }
}
//carmade3 안됌 ㅇㅇ
class CarMade3 extends Combinecar{

  printmydata(){
    print('$tiredata, $doordata, $bodydata -> car made');
  }


}