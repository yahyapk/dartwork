import 'dart:io';

void main() {
  print("what is your name?");
  String? name = stdin.readLineSync();
  print("hi $name,what is your age?");
  int age = int.parse(stdin.readLineSync()!);
  int tohundred = 100 - age;
  print("$name have $tohundred get to 100");
}
