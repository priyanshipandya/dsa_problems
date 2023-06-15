import 'dart:io';

void main() {
  print("Enter the number of test cases");
  int tcases = int.parse(stdin.readLineSync()!);
  for (int i = 0; i < tcases; i++) {
    List list1 = [];
    List list2 = [];
    List res = [];
    int k = 0;
    int length;
    print("Enter total number in list1");
    int number1 = int.parse(stdin.readLineSync()!);
    print("Enter total number in list2");
    int number2 = int.parse(stdin.readLineSync()!);
    print("Enter element");
    for (int i = 0; i < number1; i++) {
      list1.add(int.parse(stdin.readLineSync()!));
    }
    res = list1;
    print("Enter element");
    for (int i = 0; i < number2; i++) {
      list2.add(int.parse(stdin.readLineSync()!));
    }
    res.addAll(list2);
    res.sort();
    print("$res\n");
  }
}
