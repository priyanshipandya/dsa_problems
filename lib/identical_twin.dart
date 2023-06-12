import 'dart:io';

void main(){
  List res = [];
  print("Enter the test cases: ");
  int tcases = int.parse(stdin.readLineSync()!);

  for(int i = 0; i < tcases; i++){
    // List res = [];
    List l1 = [];
    int cnt = 0;
    print("Enter the no of elements in list");
    int no = int.parse(stdin.readLineSync()!);
    print("Enter the elements");
    for(int i = 0; i < no; i++){
      int ele = int.parse(stdin.readLineSync()!);
      l1.add(ele);
      for(int j = 0; j < i; j++){
        if(ele == l1[j]){
          cnt++;
        }
      }
    }
    print("Result: $cnt\n");
  }
}