void main(List<String> arguments) {
  //example list
List<String> names=['kwak','kim','jang','hyeun'];
List<int> numbers=[1,2,3,4,5,6];
List<Friend> friends=[
  Friend(name: 'kwak',age: 10),
  Friend(name: 'kim',age: 16),
  Friend(name: 'jang',age: 30),
  Friend(name: 'hyeun',age: 42),
];
var emptylist=[];
  //foreach
names.forEach((element) {print(element);});
names.forEach((element) {emptylist.add(element.split('').first);});
print(emptylist.join());
friends.forEach((element) {print(element.name.toString());});
friends.forEach((element) {element.say();});
  //fold
var foldnumbers=numbers.fold(0, (previousValue, element) => previousValue+element);
print(foldnumbers);
var foldfriendnumbers= friends.fold(0, (previousValue, element) => previousValue+element.age);
var foldfriendnames= friends.fold('', (previousValue, element) => previousValue+(element.name).split('').first);
print(foldfriendnumbers);
print(foldfriendnames);
  //map
var getting=friends.map((e) => e.age);
print(getting);
  //shuffle
names.shuffle();
print(names);
 //arrange
var reducenumber=numbers.reduce((value, element) => value+element);
print(reducenumber);
}
class Friend extends People{
  String name;
  int age;
  Friend({this.name,this.age});

  @override
  void say() {
    print('my name is $name, age is $age');
  }

}

abstract class People{
  void say();
}