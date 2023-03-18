import 'dart:io';

void main() {
  print("Hãy nhập số điểm :");
  int? mark = int.tryParse(stdin.readLineSync() ?? "0") ?? 0;

  if (mark > 75) {
    print("grade A");
  } else if (mark > 60 && mark < 75) {
    print("grade B");
  } else if (mark > 45 && mark < 60) {
    print("grade C");
  } else if (mark > 35 && mark < 45) {
    print("grade D");
  } else if (mark < 35) {
    print("grade E");
  }
}
