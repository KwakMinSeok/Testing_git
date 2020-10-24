import 'dart:async';

void main(List<String> arguments) {
  var mylist = [1, 2, 3, 4, 5];
  Stream.fromIterable(mylist).listen((event) => print('iterable:${event}'));
  Stream.periodic(Duration(seconds: 1),(e)=>e).take(10).listen((event)=>print('take $event'));
  Stream.fromFuture(getData()).listen((x) => print('from future ${x}'));
}

var mystream = Stream.periodic(Duration(seconds: 1), (e) => e)
    .take(10)
    .listen((event) => print(event));

Future<String> getData() async {
  await Future.delayed(Duration(seconds: 5));
  print('Fetched Data');
  return '5초 동안 기다렸다 온 데이터 입니다';
}
//stream 으로 공장 가동 실시간 만들어보기!