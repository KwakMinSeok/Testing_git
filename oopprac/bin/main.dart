void main() {
  B b = new B("kwak");
  b.printdatab();
  A a = new A();
  a.printdata(b);
}

class A {
  void printdata(B b){
  b.printdatab();  
  }
}

class B {
  var pname;
  B(name) {
    this.pname = name;
  }
  void printdatab(){
    print(pname);
  }
}
