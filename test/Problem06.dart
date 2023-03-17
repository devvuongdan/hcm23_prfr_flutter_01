void main() {
  final number = [5, 8, 9, 18, 100, 6, 4];
  int min = number[0];
  int max = number[0];
  for (var i = 1; i < number.length; i++) {
    if (number[i] < min) {
      min = number[i];
    }
  }
  for (var i = 1; i < number.length; i++) {
    if (number[i] > max) {
      max = number[i];
    }
  }
  print('Số nhỏ nhất trong array number là $min');
  print('Số lớn nhất trong array number là $max');
}
