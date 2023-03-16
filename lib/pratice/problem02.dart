// TODO Implement this library.

import 'dart:io';

void Problem02() {
  calculateAllowance();
}

void calculateAllowance() {
  double allowanceA = 300;
  double allowanceB = 250;
  double allowanceO = 100;
  print("Bạn thuộc nhóm nào: ");
  print("Nhập A nếu thuốc nhóm A: ");
  print("Nhập B nếu thuốc nhóm B: ");
  print("Nhập O nếu thuốc nhóm khác: ");
  String grade = stdin.readLineSync()!.toUpperCase();
  switch (grade) {
    case "A":
      print("Bạn nhận được phụ cấp là: $allowanceA");
      break;
    case "B":
      print("Bạn nhận được phụ cấp là: $allowanceB");
      break;
    case "O":
      print("Bạn nhận được phụ cấp là: $allowanceO");
      break;
    default:
      print("Bạn nhập không đúng nhóm rồi, mời bạn nhập lại! ");
      calculateAllowance();
  }
}
