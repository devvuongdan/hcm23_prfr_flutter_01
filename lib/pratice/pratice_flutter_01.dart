import 'dart:io';

void main(List<String> args) {
  print("Enter the number you want to find factorial:");
  int? n = int.tryParse(stdin.readLineSync() ?? "0") ?? 0;
  // final factorial = factoInt(n);
  factoInt(n);
}

double factoInt(n) {
  double f = 1;
  for (int i = 1; i <= n; i++) {
    f = f * i;
  }
  print("The factiorial of the number is $f");
  return f;
}
