//bug
import 'package:english_words/english_words.dart';
void main(){
var mytext;
MakeWord makeWord= MakeWord();
makeWord.textinclass=mytext;
makeWord.changeword();
print(mytext);
}


class MakeWord{
var textinclass;
void changeword(){
  generateWordPairs().take(1).forEach((element) { 
    textinclass=element;
    print(textinclass);
  });
}
}
