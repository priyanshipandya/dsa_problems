import 'dart:io';

void main() {
  List res = [];
  print("Enter the number of test cases");
  int tcases = int.parse(stdin.readLineSync()!);
  for (int i = 0; i < tcases; i++) {
    List res = [];
    print("Enter end number");
    int number = int.parse(stdin.readLineSync()!);
    for (int i = 2; i < number; i++) {
      int flag = 0;
      for (int j = 2; j < i; j++) {
        if (i % j == 0) {
          flag++;
          break;
        }
      }
      if (flag == 0) {
        print(i);
      }
    }
  }
}
