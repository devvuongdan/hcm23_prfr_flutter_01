import 'dart:io';

void main() {
  print('Hãy nhập số cần in bảng cửu chương!');
  int? num = int.parse(stdin.readLineSync() ?? '0');
  print('số cần in bảng cửu chương là $num');

  for (var i = 1; i <= 9; i++) {
    print('$num * $i = ${num * i}');
  }
}
