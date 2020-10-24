void main() {

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
  return 'tire';
}

Future bodyfac() async{
  await Future.delayed(Duration(seconds: 15));
  return 'body';
}
Future doorfac() async{
  await Future.delayed(Duration(seconds: 10));
  return 'door';
}

//yeild 랑 async* 공부하기

combine() async{
  dynamic tiredata= await tirefac();
  dynamic bodydata= await bodyfac();
  dynamic doordata= await doorfac();

  carmade(tiredata,bodydata,doordata);
}

carmade(a,b,c) {
  print('$a $b $c combined-> car made');
}
