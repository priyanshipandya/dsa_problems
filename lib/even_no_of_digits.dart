import 'dart:io';

void main(){
  List res = [];
  print("Enter the test cases: ");
  int tcases = int.parse(stdin.readLineSync()!);

  for(int i = 0; i < tcases; i++){
    List res = [];
    print("Enter the no of elements in list");
    int no = int.parse(stdin.readLineSync()!);
    print("Enter the elements");
    for(int i = 0; i < no; i++){
      int ele = int.parse(stdin.readLineSync()!);
      if(ele.toString().length % 2 == 0){
        res.add(ele);
      }
    }
    print(res);
  }
}