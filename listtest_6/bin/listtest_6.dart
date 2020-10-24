void main(List<String> arguments) {
  Iterable<String> names=['kwak','kim','jang','hong'];
  Iterable<User> myuser =[
    User(name: 'kwak',age: 21),
    User(name: 'kim',age: 17),
    User(name: 'jang',age: 18),
    User(name: 'hong',age: 30),
  ];
  filterUnder18(myuser);
}
Iterable<User> filterUnder18(Iterable<User> users) {
  // Implement this method
users.forEach((element) {
  element.age<=18?print(element.name):null;
});
}

 Iterable<User> findShortNamed(Iterable<User> users) {
  // Implement this method
}

class User {
  String name;
  int age;

  User(
    {this.name,
    this.age,}
  );
}