void main(){
  A aclass = A(1,2);
  aclass.printdata();
 B bclass = B(3,4,5,6);
bclass.printdata();
aclass.printdata();
  

}

class A{
  var a_1;
  var a_2;
  A(this.a_1,this.a_2);
  printdata(){
    print("$a_1,$a_2");
  }
}

class B extends A{
  var b_1;
  var b_2;
  B(this.b_1,this.b_2,var a_1,var a_2):super(a_1,a_2);
  @override
  printdata() {
    print('$b_1,$b_2,$a_1$a_2');
    return super.printdata();
  }
}