void main(List<String> arguments) async{
  dynamic printhidata= await printhi();
  print(printhidata);
  // 같은 함수 내부에서는 await이 끝나기 까지 기다려야함
  // 즉 데이터가 오기 까지 기다림

}

Future printhi() async {
  await Future.delayed(Duration(seconds: 6));

  return 'hi';
}
