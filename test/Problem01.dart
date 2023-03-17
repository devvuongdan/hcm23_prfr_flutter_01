void main() {
  const basicSalary = 12000;
  double DA = 0.12 * basicSalary;
  const HRA = 150;
  const TA = 120;
  const others = 450;
  double PF = 0.14 * basicSalary;
  double IT = 0.15 * basicSalary;
  double netSalary = basicSalary + DA + HRA + TA + others - (PF + IT);
  print("Net Salary = $netSalary");
}
