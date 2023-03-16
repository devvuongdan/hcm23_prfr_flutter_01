import 'dart:io';

void Problem04() {
  print("Tổng số lẻ từ A đến B!");
  stdout.write("Nhập số A: ");
  int num1 = int.parse(stdin.readLineSync()!);

  stdout.write("nhập số B: ");
  int num2 = int.parse(stdin.readLineSync()!);

  int sum = 0;

  for (int i = num1; i <= num2; i++) {
    if (i % 2 != 0) {
      sum += i;
    }
  }

  print("Tổng số lẻ từ $num1 đến $num2 là: $sum");
}
