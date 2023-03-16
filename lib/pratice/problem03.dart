import 'dart:io';

void Problem03() {
  stdout.write("Hãy nhập điểm của bạn: ");
  int marks = int.parse(stdin.readLineSync()!);

  String grade = calculateGrade(marks);

  print("Điểm của bạn là: $marks");
  print("Bạn Thuộc hạng: $grade");
}

String calculateGrade(int marks) {
  String grade;

  if (marks > 75) {
    grade = "A";
  } else if (marks > 60) {
    grade = "B";
  } else if (marks > 45) {
    grade = "C";
  } else if (marks > 35) {
    grade = "D";
  } else {
    grade = "E";
  }
  return grade;
}