void main(List<String> arguments) {
mystream.first.then((value) => print('stream.first: $value'));
mystream.last.then((value) => print('stream.first: $value'));
mystream.isEmpty.then((value) => print('stream.first: $value'));
mystream.length.then((value) => print('stream.first: $value'));

}
var mylist=[1,2,3,4,5];
var mystream = Stream.fromIterable(mylist);


