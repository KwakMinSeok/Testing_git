class Person 
{
  String firstName;
  String lastName;
  
  Person(this.firstName, this.lastName);
}

void main() {
	List<Person> people = new List<Person>();
  people.add(new Person("Joe", "Smithers"));
  people.add(new Person("Patrick", "Thomas"));
  var mappedNames = people.map((n) => 'Mr. ${n.firstName} ${n.lastName}');
  log(mappedNames);
}
  
void log(var lst) {
  lst.forEach((n) => print(n));
}