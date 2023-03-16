// ignore_for_file: unused_import

import 'dart:io';

void main() async {
  // print("Nhập tên của bạn: ");
  // String? name = stdin.readLineSync();
  // print("Tên là: $name");

  // await Future.delayed(const Duration(seconds: 3))
  //     .then((value) => print("test"));
  print("Nhập tuổi của bạn: ");
  int? age = int.tryParse(stdin.readLineSync() ?? "0") ?? 0;

  print("Ban con ${100 - age} nam thi dat 100 tuoi");
  // if (age == null) {
  //   print("tuoi la: 0");
  // } else {
  //   print("Tuoi la: $age");
  // }
}
