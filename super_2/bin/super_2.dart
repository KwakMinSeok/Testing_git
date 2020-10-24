import 'dart:async';
void main() async{
  MyAnotherApp myAnotherApp = MyAnotherApp();
  var newdata =await myAnotherApp.showdata();
   print(newdata);


}
class MyApp{
  MyApp(){
  print('MyApp constructor');
  }
}

class MyAnotherApp extends MyApp{
  MyAnotherApp(){
    print('AnotherApp Constructor');
  }
  Future showdata(){
    Future.delayed(Duration(
      seconds: 5
    ));
   return 'hi' ;
  }
  
}