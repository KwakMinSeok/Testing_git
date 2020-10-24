
void main() {
  List<String> names=["Max","John","Sara","Peter"];
  List<String> letters=[];
  List<String> getting=[];
  List<int> numbers = [1,2,3,4,5,6];
  List<Freind> freinds=[Freind(name: 'Aa',age: 1),Freind(name: 'Bb',age: 2),
  Freind(name: 'Cc',age: 3),Freind(name: 'Dd',age: 4)];
  names.forEach((element) {letters.add(element.split("").first);});  
  print(letters.join());
  names.fold(0, (previousValue, element) => letters.add(element.split('').first));
  print(letters.join());
  freinds.forEach((element) {letters.add(element.name);});
  String firstnames= freinds.fold('', (previousValue, element) =>previousValue+element.name );
  //initial value 는 split, previousvaue는 이전 값,, element 는 현재값.
  print(firstnames);
  Child child= new Child(number: 1);
  Mother mother= new Mother();
  child.saynumber();
  mother.saynumber();
  void main() {
  Dog d = new Dog(); // Prints 'Dog was created'.
  print(d.name);     // Prints 'Spot'.
}
}

class Freind{
  String name;
  int age;
  Freind({this.name,this.age});
}
abstract class Person{
  void walk();
  void talk();

}
class Jay extends Person{
  @override
  void talk() {
    // TODO: implement talk
  }

  @override
  void walk() {
    // TODO: implement walk
  }
  
}

class Mother{
  final int number;
  Mother({this.number});
  void saynumber(){
    print(number);
  }
}

class Child extends Mother{
  final int number;
  Child({this.number}):super(
    number:2
  );
  void saynumber(){
    print(number);
  }
}

abstract class Animal{
  String name;
  Animal(this.name);
}

class Dog extends Animal{
  Dog():super('spot'){
    print('dog');
  }
  
}
