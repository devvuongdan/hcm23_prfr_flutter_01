import 'dart:io';

void main(List<String> args) {
  print("Enter the number you want to show the multiplication table:");
  int? num = int.tryParse(stdin.readLineSync() ?? "0") ?? 0;
  for (int i = 0; i <= 10; i++) {
    print("$num x $i = ${num * i}");
  }
}
