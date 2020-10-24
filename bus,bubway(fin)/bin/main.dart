void main(){
Student stud1 = new Student("kwak", 18, 5000);
Student stud2 = new Student("kim", 13, 10000);
Bus bus= new Bus("413", 1000);
Subway subway = Subway("2",1500);
stud1.takebus(bus);
stud1.takesubway(subway);
stud1.showstudentdata();
stud2.takebus(bus);
stud2.showstudentdata();
bus.showbusdata();
subway.showsubwaydata();


}

class Student{
var sname;
var sage;
var smoney;
Student(String name,int age, int money ){
  sname=name;
  sage=age;
  smoney=money;
}
void takebus(Bus bus){
smoney=smoney-bus.bcost;
bus.ridebus();
}
void takesubway(Subway subway){
smoney=smoney-subway.wcost;
subway.ridesubway();
}
void showstudentdata(){
print("$sname 님의 나이는 $sage 이고 잔액은 $smoney 가 남았습니다.");
}

}

class Bus{
var bname;
var bcost;
var bmoney=0;
var bpassenger=0;
Bus( this.bname,this.bcost,);
//this. 하고 멤버변수 이름으로 설정해도 됨.
void ridebus(){
bpassenger++;
bmoney=bmoney+bcost;
}
void showbusdata(){
  print("$bname 번 버스는 $bpassenger 명의 승객을 태워 $bmoney 를 벌었습니다");
}

}

class Subway{
var wname;
var wcost;
var wmoney=0;
var wpassenger=0;
Subway(String name, int cost,){
wcost=cost;
wname=name;
}
void ridesubway(){
wpassenger++;
wmoney=wmoney+wcost;
}
void showsubwaydata(){
  print("$wname 호선 지하철은 $wpassenger 명의 승객을 태워 $wmoney 를 벌었습니다");
}

}