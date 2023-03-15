void main() {
  //varriables
  int basicSalary = 12000, hra = 150, ta = 120, others = 450;
  double da = 0.12 * basicSalary;
  num pf = 0.14 * basicSalary, it = 0.15 * basicSalary;
  num netSalary = basicSalary + da + hra + ta + others - (pf + it);

  //print salary
  print(
      "PF salary is ${pf.toStringAsFixed(0)} USD \nIT salary is ${it.toStringAsFixed(0)} USD");
  print("Net salary is ${netSalary.toStringAsFixed(0)} USD");
}
