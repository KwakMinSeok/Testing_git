//bug
import 'dart:async';
import 'dart:io';
void main()async{
  File file = new File('textfolder/test.txt');
  Future fileContents =file.readAsString();
  await fileContents.then((value) => print(value));
}