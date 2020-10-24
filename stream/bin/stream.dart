import 'dart:async';

import 'dart:math';
//bug
void main(){
  StreamController<dynamic> ctrl = StreamController<dynamic>();
  //Stream stra = ctrl.stream;
  //stra.listen((event) =>print(event));
  //ctrl.add(12);
  //StreamController<dynamic> ctrl2 = StreamController<dynamic>();
  ctrl.stream.listen((event) {print(event);});
  ctrl.add(12);
  

  
}
class Newclass {
  var name;
  var age;
  var height;
  Newclass({this.age,this.height,this.name}){
    print(age);
  }

}
Future<double> getRandomValue() async {
  var random = Random(2);
  await Future.delayed(Duration(seconds: 1));
  return random.nextDouble();
}
