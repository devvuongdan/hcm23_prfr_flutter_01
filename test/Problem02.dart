import 'dart:io';

void main() {
  final workerList = <Info>[];
  print("Hãy nhập số lượng công nhân");
  int? number = int.tryParse(stdin.readLineSync() ?? "0") ?? 0;
  for (int i = 0; i < number; i++) {
    print("Hãy nhập thông tin công nhân ");
    Info obj = Info(name: '', salary: 0, grade: '');
    obj.inputInfo();
    workerList.add(obj);
  }

  for (int j = 0; j < number; j++) {
    switch (workerList[j].grade) {
      case "A":
        workerList[j].salary += 300;
        workerList[j].displayInfo();
        break;
      case "B":
        workerList[j].salary += 250;
        workerList[j].displayInfo();
        break;
      default:
        workerList[j].salary += 100;
        workerList[j].displayInfo();
    }
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
    print("Hãy nhập tên công nhân:");
    name = stdin.readLineSync() ?? "";

    print("Hãy nhập số lương :");
    salary = int.tryParse(stdin.readLineSync() ?? "0") ?? 0;

    print("Hãy nhập cấp bậc công nhân");
    grade = stdin.readLineSync() ?? "";
  }

  void displayInfo() {
    print("Tên công nhân là $name");
    print("Lương của công nhân là $salary");
    print("Cấp bậc của công nhân là $grade");
  }
}
