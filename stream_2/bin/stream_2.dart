import 'dart:async';

void main(List<String> arguments) {
  streamMap.listen((event)=>print(event));
  var stream= Stream.fromIterable([1,2,3,4,5]);
  stream.transform(transformer).listen((event)=>print('listen: $event'));
}
var streamMap = Stream.periodic(Duration(milliseconds: 200),(x)=>x).take(3).map((event) => (x)=>x+10);
var transformer = StreamTransformer.fromHandlers(handleData: (value,sink){
  sink.add("First:$value");
  sink.add("Second:$value");
});
