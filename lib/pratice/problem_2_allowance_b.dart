import 'dart:io';

void main(List<String> args) {
  int totalSalary = 0;
  print("Enter the worker's name:");
  String? name = stdin.readLineSync() ?? "";
  print("Enter the Salary:");
  int? salary = int.tryParse(stdin.readLineSync() ?? "") ?? 0;
  print("Enter the grade (A, B, C, D):");
  String? grade = stdin.readLineSync() ?? "";
  switch (grade) {
    case "A":
      totalSalary = salary + 300;
      print(
          "The salary of worker $name is: $salary, grade is $grade, total salary is $totalSalary");
      break;
    case "B":
      totalSalary = salary + 250;
      print(
          "The salary of worker $name is: $salary, grade is $grade, total salary is $totalSalary");
      break;
    case "C":
      totalSalary = salary + 100;
      print(
          "The salary of worker $name is: $salary, grade is $grade, total salary is $totalSalary");
      break;
    case "D":
      totalSalary = salary + 100;
      print(
          "The salary of worker $name is: $salary, grade is $grade, total salary is $totalSalary");
      break;
    default:
      print("Something wrong, please enter the grade again.");
      break;
  }
}
