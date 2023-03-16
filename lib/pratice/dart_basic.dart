import 'package:dart_basic/problem02.dart';
import 'package:dart_basic/problem03.dart';
import 'package:dart_basic/problem04.dart';
import 'package:dart_basic/problem05.dart';
import 'package:dart_basic/problem06.dart';
import 'package:dart_basic/problem07.dart';
import 'package:dart_basic/problem08.dart';
import 'dart:io';

void main() {
  Begin();
  int problem;
  problem = int.parse(stdin.readLineSync()!);
  do {
    switch (problem) {
      case 0:
        print("Bạn muốn thoat chương trình");
        break;
      case 2:
        print('*******************Bài Tập Problem 02!*******************');
        Problem02();
        Begin();
        break;
      case 3:
        print('*******************Bài Tập Problem 03!*******************');
        Problem03();
        break;
      case 4:
        print('*******************Bài Tập Problem 04!*******************');
        Problem04();
        break;
      case 5:
        print('*******************Bài Tập Problem 05!*******************');
        Problem05();
        break;
      case 6:
        print('*******************Bài Tập Problem 06!*******************');
        Problem06();
        break;
      case 7:
        print('*******************Bài Tập Problem 07!*******************');
        Problem07();
        break;
      case 8:
        print('*******************Bài Tập Problem 08!*******************');
        Problem08();
        break;
      default:
        break;
    }
  } while (problem == 0);
}

void Begin() {
  print("Bạn muốn xem bài Problem nào!");
  print("Nhập 2 nếu muốn xem bài Problem02");
  print("Nhập 3 nếu muốn xem bài Problem03");
  print("Nhập 4 nếu muốn xem bài Problem04");
  print("Nhập 5 nếu muốn xem bài Problem05");
  print("Nhập 6 nếu muốn xem bài Problem06");
  print("Nhập 7 nếu muốn xem bài Problem07");
  print("Nhập 8 nếu muốn xem bài Problem08");
  print("Nhập 0 nếu muốn tắt chương trình");
}
