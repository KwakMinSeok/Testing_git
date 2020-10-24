import 'dart:async';
void main(List<String> arguments) {
 first();
 second1();
 third();
}
void first(){
print('first');
}
Future second1() async{
  await Future.delayed(Duration(seconds: 5));
  // async 이후 await 값을 기다린다,
  // 즉 그 뒤의 실행문이 실행되지 않는 것이 아니라
  // async가 있는 문장은 그대로 실행되고 main함수에
  // 있는 나머지 문장은 모두 실행이됨; 
   print('second1');
  //별 5개: await이 붙은 문장 뒤에만 async적용됨.
  //결국 Futre가 있는곳에 async를 하지 않는 다면, 
  // 기다릴 필요가 없으니 지나치고 다른것 먼저 실행하게됨
  // print 앞에 await을 붙이면 print는 기다릴 것이없으니 바로
  // 프린트 되고, 함수 내부의 future은 그대로 실행됨.
}
void third(){
  print('third');
}

Future<dynamic>second2() async{
  for(int i=0; i<1000000000;i++);
  await print('second2');
}