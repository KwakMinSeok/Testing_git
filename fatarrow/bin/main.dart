//움직임 방지용
void main(){
Function1(3);
Function1(2);
Function2(3);
Function2(2);
}
void Function1(var num1){
if(num1==3){
  print("it is $num1");
}
else{
  print("it is not 3");
}
}
void Function2(var num2)=>print("${num2==3?" ":"not"}3");
//?:문을 {}안에 넣어서 문자로 프리트되게 함.