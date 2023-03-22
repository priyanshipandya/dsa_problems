import 'dart:io';

void main() {
    print("Enter the test cases");

  /// Used for taking inputs from user
  int tcases = int.parse(stdin.readLineSync()!);
  if (tcases == 0) {
    return;
  }

  ///Creates two list
  for (int t = 0; t < tcases; t++) {
    List<int> list = [];
    List<int> resList = [];
    int sum = 0;

    /// Reads the total number of elements present in list.
    print("Enter number of element in testcase: ${t + 1}");
    int t_ele = int.parse(stdin.readLineSync()!);

    /// Reads elements.
    print("Enter elements: ");
    for (int i = 0; i < t_ele; i++) {
      int ele = int.parse(stdin.readLineSync()!);
      list.add(ele);
      sum += ele;
      resList.add(sum);
    }

    ///Prints the initial List and result list.
    print(list);
    print(resList);
  }
}
