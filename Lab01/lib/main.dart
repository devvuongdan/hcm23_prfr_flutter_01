// ignore: unused_import
import 'dart:io';
// ignore: unused_import
import './ex.dart';

void main() {
  // final a = Camera(name: "test1", color: "blue", megapixel: 10);
  // final b = Camera(name: "test2", color: "blue", megapixel: 100);
  // a.display();

  // problem03
  // print("Nhap diem: ");
  // double? marks = double.tryParse(stdin.readLineSync() ?? "0") ?? 0;
  // String grade = getGrade(marks);
  // print("Học sinh được xếp loại: $grade");

  // problem04
  // print("Nhap so thu 1: ");
  // int? num1 = int.tryParse(stdin.readLineSync() ?? "0") ?? 0;
  // print("Nhap so thu 2: ");
  // int? num2 = int.tryParse(stdin.readLineSync() ?? "0") ?? 0;
  // int sum = sumOfOddNumbersBetween(num1, num2);
  // print("Tổng các số lẻ giữa $num1 và $num2 là:  $sum");

  // problem05
  // print("Nhap bang cuu chuong muon in: ");
  // int? num = int.tryParse(stdin.readLineSync() ?? "0") ?? 0;
  // printMultiplicationTable(num);

  // problem06
  // var arr = [5, 3, 9, 2, 7, 1];
  // findMinMax(arr);

  // problem07
  // print("Nhap ban kinh: ");
  // double? radius = double.tryParse(stdin.readLineSync() ?? "0") ?? 0;
  // calculateCircle(radius);

  // problem08
  print("Nhap so: ");
  int? n = int.tryParse(stdin.readLineSync() ?? "0") ?? 0;
  int result = factorial(n);
  print(" $n! = $result");
}
