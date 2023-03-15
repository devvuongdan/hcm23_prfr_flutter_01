import 'dart:io';

void main() {
  // empty list
  final workerList = <Info>[];
  int i = 0;
  // Info infoWorker = Info(name: '', salary: 0, grade: '');
  print("Enter the number of worker:");
  int? number = int.tryParse(stdin.readLineSync() ?? "0") ?? 0;
  for (int i = 0; i < number; i++) {
    print('Enter the information of worker');
    // Info i = Info(name: '', salary: 0, grade: '');
    workerList[i].inputInfo();
    workerList.add(workerList[i]);
  }

  for (int i = 0; i < number; i++) {
    switch (workerList[i].grade) {
      case "A":
        workerList[i].salary = workerList[i].salary + 300;
        break;
      case "B":
        workerList[i].salary = workerList[i].salary + 250;
        break;
      default:
        workerList[i].salary = workerList[i].salary + 100;
        break;
    }
    workerList[i].displayInfo();
  }
}

class Info {
  String name;
  int salary;
  String grade;

  Info({
    required this.name,
    required this.salary,
    required this.grade,
  });

  void inputInfo() {
    print("Enter the worker's name:");
    name = stdin.readLineSync() ?? "";

    print("Enter the Salary");
    salary = int.tryParse(stdin.readLineSync() ?? "0") ?? 0;

    print("Enter the grade (A, B, C or D)");
    grade = stdin.readLineSync() ?? "";
  }

  void displayInfo() {
    print("The worker's name is $name");
    print("The total salary is $salary");
    print("The grade is $grade");
  }
}
