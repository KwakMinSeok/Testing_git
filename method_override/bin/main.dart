//bug
void main(){
  var rectangle = Rectangle();
  rectangle.draw();
}

abstract class Shape{
  var a;
  var b;
  void draw();
  void something(){}
}

class Rectangle extends Shape{
  void draw(){
    print('drawing rectangle');
  }
  void something(){

  }
}