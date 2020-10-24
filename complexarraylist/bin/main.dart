class Sale {
  int employeeId;
  double price;
  Sale(this.employeeId, this.price);
}

class Employee {
  int id;
  List<Sale> sales;
  Employee (this.id, this.sales);  
}

void main() {
  //Create a list of employees and their respective sales
  List<Employee> employees = new List<Employee>();
  employees.add(new Employee(1, [new Sale(1, 100.50), new Sale(1, 300.25)]));
  employees.add(new Employee(2, [new Sale(2, 300.00), new Sale(2, 50.25), new Sale(2, 150.00)]));
  employees.add(new Employee(3, [new Sale(2, 400.00), new Sale(2, 30.75), new Sale(3, 50.00)]));
  //Sort so that the employee with the most sales is on top and so on...
  employees.sort((a, b) => (b.sales.fold(0, (prev, element) => prev + element.price)).compareTo(a.sales.fold(0, (prev, element) => prev + element.price)));
  log(employees); //prints Employee #2, followed by Employee #3, then ending with Employee #1
}
  
void log(var lst) {
  lst.forEach((l) => print("Employee #${l.id} has ${l.sales.length} sales totaling ${l.sales.fold(0, (prev, element) => prev + element.price)} dollars!"));
}