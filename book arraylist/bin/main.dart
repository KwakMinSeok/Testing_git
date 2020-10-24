void main(){

List<Book> mybook= [Book(bname: "ㄱ",bauthor: "a"),Book(bname: "ㄴ",bauthor: "b")];
BookCard bc = BookCard();

mybook.map((v)=>bc.showbook(v)).toList();
//fat arrow는 return, 즉 값을 반환하는 것에만 => 을 붙임 항상{return}의 현태가 존재하는 건 아니다!
//v는 Book의 인스턴스인 bk 의 값을 저장 해줌. 
/*v 의 정보는 Book class 로 저장되어서 name 과 author가 저장 되기 때문에 한개인 V
로 저장하기 위해서는 v값을 받아주는 인자가 존재해야함. -> 인자는 BookCard임*/
}
class Book{
var bname;
var bauthor;
Book({this.bname,this.bauthor});

}
class BookCard{
void showbook(Book bk){
  print("Book Card ${bk.bname},${bk.bauthor}");
  
}
}