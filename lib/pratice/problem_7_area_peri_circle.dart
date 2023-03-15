import 'dart:io';

void main(List<String> args) {
  print("Input the circle radius:");
  double? r = double.tryParse(stdin.readLineSync() ?? "0") ?? 0;
  // final area = areaCircle(r);
  // final perimeter = periCircle(r);
  areaCircle(r);
  periCircle(r);
}

//find the area of the cirlce
double areaCircle(double r) {
  double a = 0, pi = 3.14;
  a = 2 * r * pi;
  print("The area of the circle is $a");
  return a;
}

//find the perimeter of the circle
double periCircle(double r) {
  double p = 0, pi = 3.14;
  p = r * r * pi;
  print("The perimeter of the circle is $p");
  return p;
}
