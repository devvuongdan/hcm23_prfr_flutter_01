import 'dart:io';

void main() {
  print('Hãy nhập số num1');
  int? num1 = int.parse(stdin.readLineSync() ?? '0');
  print('số num1 là $num1');
  print('Hãy nhập số num2');
  int? num2 = int.parse(stdin.readLineSync() ?? '0');
  print('số num2 là $num2');
  int sum = 0;
  for (var i = num1; i <= num2; i++) {
    if (i % 2 == 1) {
      sum += i;
    }
  }
  print('Tổng của tất cả các số lẻ từ num1 đến num2 là $sum');
}
