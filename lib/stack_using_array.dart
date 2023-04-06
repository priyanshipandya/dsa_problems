import 'dart:io';

void main() {
  List<int> l = [];
  print("Choose the operation");



  do {
    print(
        "\n\nEnter 1 for pushing into stack\nEnter 2 for popping into stack\nEnter 3 for peeking into stack\nEnter 4 for printing the stack\nEnter 5 for exiting the stack ");
    int choice = int.parse(stdin.readLineSync()!);
    switch (choice) {
      case 1:
        print("How many elements you want to enter: ");
        int totalElements = int.parse(stdin.readLineSync()!);

        print("Enter the data which you want to push: ");
        for (int i = 0; i < totalElements; i++) {
          print("Element ${i + 1}: ");
          int data = int.parse(stdin.readLineSync()!);
          push(l, data);
        }
        //checkCondition();
        break;

      case 2:
        pop(l);
        break;

      case 3:
        peek(l);
        break;

      case 4:
        printData(l);
        break;

      case 5:
        return;

      default:
        print("Invalid input number");
        break;
    }
  } while (true);
}

  void push(List<int> l, int data) {
    l.add(data);
  }

  void pop(List<int> l) {
  if(!l.isEmpty)
      l.removeLast();
  else{
    print("List is Empty");
    return;
  }

  }

  void peek(List<int> l) {
  if(!l.isEmpty){
    int no = l.removeLast();
    print("\nData at top is $no\n");
    l.add(no);
  }else{
    print("List is Empty");
    return;
  }

  }

  void printData(List<int> l) {
  print("\nFollowing is the content of the stack\n");
    for (int i = l.length-1; i >= 0; i-- ) {
        print(l[i]);
    }
}
