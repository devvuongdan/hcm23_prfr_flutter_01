import 'dart:io';

int giaiThua(int n) {
  if (n == 0) {
    return 1;
  } else {
    return n * giaiThua(n - 1);
  }
}

void Problem08() {
  stdout.write("Nhập số muốn tính giai thừa: ");
  int n = int.parse(stdin.readLineSync()!);

  int result = giaiThua(n);

  print("Giai thừa của $n là: $result");
}
