//bug
void main() {
  var ani=Animal();
  ani.eat();
  var dog = Dog();

  dog.eat();
  
}

class Animal {
  var color;
  void eat() {
    print('animal is eat');
  }
}

class Dog extends Animal {
  var breed;
  void bark() {
    print('bark');
  }
  @override
  void eat(){
    print('dog is eating');
    super.eat();
    //super위 아래 여부는 부모의 메서드인 eat()가 
    //먼저 실행되느냐, 아니면 자식의 메서드가 먼저 실행되느냐의 결과를 결정한다.
  }
}

class Cat extends Animal {
  int age;
  void meow(){
    print('meow');
  }
}
