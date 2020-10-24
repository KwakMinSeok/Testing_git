void main(List<String> arguments) {
  List<String> items=['salad','popcorn','toast','lasagne'];
  List<Iterable> emptylist=[];
  items.forEach((element) {print(element.length>5);});
  var itemwhere=items.where((element) => element.length>5);
  var itemsany = items.any((element) => element.length>5);
  emptylist.add(itemwhere);
  //print(emptylist);
  //print(itemsany);
  List<User> mtuser=[
    User('kwak', 10),
    User('kim', 40),
    User('jang', 30),
    User('hong', 5),

  ];
  filterUnder21(mtuser);
}
List<User> filterUnder21(List<User> users) {
 users.where((element) {
   if(element.age<21){
     return null;
   }else{
     print(element.name);
   }
  });
}
Iterable<User> findShortNamed(Iterable<User> users) {
  // Implement this method
}

class User {
  String name;
  int age;

  User(
    this.name,
    this.age,
  );
}