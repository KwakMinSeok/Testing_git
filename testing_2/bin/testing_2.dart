import 'dart:math';

void main(List<String> arguments) {
List<int> myint= [1,2,3,4,5] ;
List<String> mystring= ['A','B','C','D','E'] ;
List<String> emptylist=[];
List<Friend> myfriends=[
  Friend(name: 'Kwak',age: 12),
  Friend(name: 'Kim',age: 34),
  Friend(name: 'Jang',age: 17),
  Friend(name: 'Hyun',age: 18),
];
Iterable<BestFriend> bestfriends= myfriends.map((e) => BestFriend(name: e.name));
bestfriends.forEach((element) {
  print(element.say());
});
mystring.forEach((element) {emptylist.add(element.split('').first); });
var folding =mystring.fold('', (previousValue, element) => previousValue+element);
var getting = emptylist.join();
var pownumber= myint.map((e) => e);
myint.forEach((element)=> print(element));
print(pownumber);
print(getting);
print(folding);
print(emptylist);


}
class Friend{
  String name;
  int age;
  Friend({this.name,this.age});
}
class BestFriend extends FriendMother{
  String name;
  BestFriend({this.name});

  @override
  String say() {
    return 'one of my best friend is $name';
  }
  
}

abstract class FriendMother{
String say();
}
