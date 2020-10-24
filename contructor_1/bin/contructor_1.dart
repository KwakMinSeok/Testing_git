void main(List<String> arguments) {
  print('Hello world!');
}
class SayHI{
  hi(){
    print("hi");
  }
}

class SayBye{
  SayHI sayHI= SayHI();
  bye(){
    sayHI.hi();
  }
  
}