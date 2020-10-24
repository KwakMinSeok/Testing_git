void main(){
  var i;
  List<int> mylist=[];
  mylist.length=10;
  for(i=0;i<mylist.length;i++){
    mylist[i]=i;
  }
  var limt=mylist.where((v)=>v<5);
  //이렇게도 됨;;
  log(limt);

}
  void log(var lst){
    lst.forEach((n)=>print(n));
  }

