import 'dart:async';

void main(List<String> arguments) {
broad.listen((event) =>print("1:$event"));
broad.listen((event) =>print("2:$event"));
src.add(1);
src.add(2);

}

var src = StreamController.broadcast();
var broad= src.stream;
