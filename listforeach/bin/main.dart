void main(){
  var i;
  List<int> mylist=[];
  mylist.length=5;
  for(i=0;i<mylist.length;i++){
    mylist[i]=i;
  }
  mylist.forEach((v)=>print("value $v"));
  //이렇게도 됨;;
  for(var n in mylist){
    print("value $n");
  }
}