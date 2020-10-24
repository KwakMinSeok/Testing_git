void main(List<String> arguments) {
  List<Iterable> emptylist=[];
  List<String> splitlist=[
    '(A)','(B)'
  ];
  List<String> newemptylist=[];
  List<MyCard> alldata=[
    MyCard(
      mymap: {'title':1},
      listtodo: [Todo(
        subtitle: 'subtitle',
        body: 'body'
      )]
    ),
     MyCard(
      mymap: {'title2':2},
      listtodo: [Todo(
        subtitle: 'subtitle2',
        body: 'body2'
      )]
    ),
  ];
  alldata.forEach((element) {print(element.mymap.keys.toString());});
  alldata.forEach((element) {print(
  element.listtodo.map((e) => e.body)
  );});
  alldata.forEach((element) {emptylist.add(element.mymap.keys.where((element) => element.contains('t')));});
  splitlist.forEach((element) {newemptylist.addAll(element.split('('));});  
  print(splitlist);
  
}
class MyCard{
  Map<String,int> mymap;
  List<Todo> listtodo;
  MyCard({
  this.mymap,this.listtodo    
  });
}
class Todo{
  String subtitle;
  String body;
  Todo({this.subtitle,this.body});
}
