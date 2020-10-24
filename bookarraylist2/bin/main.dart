//움직임 방지
void main(){
var i;
CheckBook ck= CheckBook();
List<Book> mylist=[];
for(i=0;i<10;i++){
  mylist.add(Book("$i","$i"));
}

mylist.map((v)=>ck.check(v)).toList();
}
//v는 Book클래스의 인스턴스가 됨.
class Book{
  var name;
  var author;
  Book(this.name,this.author);
}
class CheckBook{
  void check(Book bk){
    print("Book:${bk.name},${bk.author}");
  }
}