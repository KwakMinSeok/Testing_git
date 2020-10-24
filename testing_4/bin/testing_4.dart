void main(List<String> arguments) {
  List<int> numbers=[4,1,3,5,10,18];
  List<Friend> friends=[
    Friend(name: 'a',age: 4),
    Friend(name: 'b',age: 1),
    Friend(name: 'c',age: 3),
    Friend(name: 'd',age: 5),
    Friend(name: 'e',age: 10),
  ];
  List<List<Friend>> listfriends=[
    [
      Friend(name: 'a',age: 4),
    Friend(name: 'b',age: 1),
    Friend(name: 'c',age: 3),
    Friend(name: 'd',age: 5),
    Friend(name: 'e',age: 10),
    ],
    [Friend(name: 'f',age: 5),
    Friend(name: 'g',age: 10),
    Friend(name: 'h',age: 2),
    Friend(name: 'i',age: 1),
    Friend(name: 'j',age: 3),],

    [Friend(name: 'k',age: 1),
    Friend(name: 'l',age: 5),
    Friend(name: 'm',age: 10),
    Friend(name: 'n',age: 3),
    Friend(name: 'o',age: 28),]
  ];
  Map<String,int> maps={
    "a":1,
    "b":2,
    "C":3,
    "d":4
  };
  //sort->큰수에서 작은수로 바교함.
  numbers.sort();
  print(numbers);
  friends.sort((a,b)=>b.age.compareTo(a.age));
  friends.forEach((element) {print(element.age);});
  print(listfriends[0][0].name);
  //
  maps.update('e', (value) => value,ifAbsent: ()=> 5);
  print(maps);
  var mykey=maps.keys.firstWhere((element) => maps[element]==2);
  print(mykey);
  var trans=maps.map((key, value) => MapEntry('$key', value*2));
  print(trans);

}

class Friend{
String name;
int age;
Friend({this.name,this.age});
}
