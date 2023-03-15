import 'dart:io';

void main(List<String> args) {
  final numList = <int>[];
  int kMin = 0, kMax = 0;
  //input
  print("Enter the number of the array:");
  int? arrNum = int.tryParse(stdin.readLineSync() ?? "0") ?? 0;
  for (int i = 0; i < arrNum; i++) {
    print("Enter the ${i + 1} number in the array:");
    int? input = int.tryParse(stdin.readLineSync() ?? "0") ?? 0;
    numList.add(input);
  }
  print(numList);

  //check min max
  kMin = numList[0];
  kMax = numList[0];
  for (int i = 0; i < arrNum; i++) {
    //check min
    if (numList[i] < kMin) {
      kMin = numList[i];
    }
    //check max
    if (numList[i] > kMax) {
      kMax = numList[i];
    }
  }

  //display
  print("The largest number in the array is: $kMax");
  print("The smallest number in the array is: $kMin");
}
