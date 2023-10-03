import 'dart:io';

void main() {
  int n;
  print('Enter a number');
  n = int.parse(stdin.readLineSync()!);

  String? name;
  print('Enter ur name');
  name = stdin.readLineSync();

  for (int i = 1; i <= n; i++) {
    for (int j = 1; j <= i; j++) {
      stdout.write('$j ');
    }
    stdout.writeln();
  }
}
