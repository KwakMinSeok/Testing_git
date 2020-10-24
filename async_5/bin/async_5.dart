import 'dart:io';
import 'dart:convert';
import 'dart:async';

 void main() async{
   File file = File('text.txt');
   IOSink sink = file.openWrite(
     mode: FileMode.append
   );
   sink.add(
     utf8.encode("hello ${DateTime.now().toIso8601String()}\n")
   );
   await sink.flush();
   await sink.close();

 }