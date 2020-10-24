void main(List<String> arguments) {
var numstream = createstream([1,3,5,7,9]);
numstream.listen((event)=>print(event));
}
Stream<int> createstream(List<int> numbers) async*{
 
  for(var number in numbers){
     await Future.delayed(Duration(
    seconds: 1
  ));
    yield number;
  }
}