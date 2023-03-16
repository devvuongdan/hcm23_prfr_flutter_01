import 'dart:io';

double dienTich(double radius) {
  return 3.14 * radius * radius;
}

double chuvi(double radius) {
  return 2 * 3.14 * radius;
}

void Problem07() {
  stdout.write("Nhập bán kính hình tròn: ");
  double radius = double.parse(stdin.readLineSync()!);

  double area = dienTich(radius);
  double perimeter = chuvi(radius);

  print("Diện tích hình tròn là: $area");
  print("Chu vi hình tròn là: $perimeter");
}
