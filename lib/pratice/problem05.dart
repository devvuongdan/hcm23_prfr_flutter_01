import 'dart:io';

void Problem05() {
  stdout.write("Bạn muốn viết Bảng Cửu Chương nào: ");
  int number = int.parse(stdin.readLineSync()!);

  for (int i = 1; i <= 10; i++) {
    int result = number * i;
    print("$number x $i = $result");
  }
}
