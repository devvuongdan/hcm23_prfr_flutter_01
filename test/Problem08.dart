import 'dart:io';

void main() {
  print('Hãy nhập số cần tính giai thừa!');
  int num = int.parse(stdin.readLineSync() ?? '0');
  int f = 1;
  for (var i = 1; i < num; i++) {
    f *= i;
  }
  print('Giai thừa của $num là $f');
}
