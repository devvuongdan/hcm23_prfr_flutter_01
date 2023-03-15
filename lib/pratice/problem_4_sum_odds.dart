import 'dart:io';

void main() {
  //enter 2 num
  print("Enter the first number:");
  int? num1 = int.tryParse(stdin.readLineSync() ?? "0") ?? 0;
  print("Enter the second number:");
  int? num2 = int.tryParse(stdin.readLineSync() ?? "0") ?? 0;
  int S = 0;

  //num 1 > num 2
  if (num1 > num2) {
    for (int i = num2; i <= num1; i++) {
      if (i % 2 != 0) {
        S = S + i;
      }
    }
    print("Sum of odd numbers between $num1 and $num2 is: $S");
  }

  //num 1 < num 2
  else if (num1 < num2) {
    for (int i = num1; i <= num2; i++) {
      if (i % 2 != 0) {
        S = S + i;
      }
    }
    print("Sum of odd numbers between $num1 and $num2 is: $S");
  }

  //num 1 = num 2
  else {
    if (num1 % 2 != 0) {
      print("The $num1 and $num2 are odd numbers");
    } else {
      print("The $num1 and $num2 are even numbers");
    }
  }
}
