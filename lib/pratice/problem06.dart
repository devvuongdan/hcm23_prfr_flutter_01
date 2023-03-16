void Problem06() {
  List<int> arr = [10, 5, 25, 7, 20];

  int min = arr[0];
  int max = arr[0];

  for (int i = 1; i < arr.length; i++) {
    if (arr[i] < min) {
      min = arr[i];
    }
    if (arr[i] > max) {
      max = arr[i];
    }
  }

  print("Số nhỏ nhất trong mảng là: $min");
  print("Số lớn nhất trong mảng là: $max");
}
