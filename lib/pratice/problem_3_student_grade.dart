import 'dart:io';

void main(List<String> args) {
  String stdGrade = "";
  print("Enter the student name:");
  String? stdName = stdin.readLineSync();
  //enter the mark
  print("Enter the grade (0-100):");
  int? stdMark = int.tryParse(stdin.readLineSync() ?? "0") ?? 0;
  //check the mark format

  if (stdMark > 75) {
    stdGrade = "A";
  } else if (stdMark > 60 && stdMark <= 75) {
    stdGrade = "B";
  } else if (stdMark > 45 && stdMark <= 60) {
    stdGrade = "C";
  } else if (stdMark > 30 && stdMark <= 45) {
    stdGrade = "D";
  } else {
    stdGrade = "E";
  }
  //print the grade
  if (stdMark < 0 || stdMark > 100) {
    print("Wrong mark format, please try it again");
  } else {
    print("The mark of student $stdName is $stdMark and grade is $stdGrade");
  }
}
