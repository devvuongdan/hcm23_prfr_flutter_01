// ex3 kiểm tra điểm
String getGrade(double marks) {
  if (marks > 75) {
    return 'A';
  } else if (marks > 60) {
    return 'B';
  } else if (marks > 45) {
    return 'C';
  } else if (marks > 35) {
    return 'D';
  } else {
    return 'E';
  }
}

// ex4 tính tổng các số lẻ trong khoảng
int sumOfOddNumbersBetween(int num1, int num2) {
  var sum = 0;
  for (var i = num1 + 1; i <= num2; i++) {
    if (i % 2 == 1) {
      sum += i;
    }
  }
  return sum;
}

// ex05 in bảng cửu chương
void printMultiplicationTable(int number) {
  for (var i = 1; i <= 10; i++) {
    var product = number * i;
    print("$number x $i = $product");
  }
}

// ex06 tìm min max
void findMinMax(List<int> arr) {
  var min = arr[0];
  var max = arr[0];
  for (var i = 1; i < arr.length; i++) {
    if (arr[i] < min) {
      min = arr[i];
    }
    if (arr[i] > max) {
      max = arr[i];
    }
  }
  print("Số bé nhất: $min");
  print("Số lơn nhất: $max");
}

// ex07 tính chu vi và diện tishc hình tròn
void calculateCircle(double radius) {
  double pi = 3.14159;
  double area = pi * radius * radius;
  double perimeter = 2 * pi * radius;
  print("Diện tích hình tròn có bàn kính $radius bằng: $area");
  print("Chu vi hình tròn có bàn kính $radius bằng: $perimeter");
}

// ex08 tính giai thừa
int factorial(int n) {
  if (n == 0) {
    return 1;
  } else {
    return n * factorial(n - 1);
  }
}
