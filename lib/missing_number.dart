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
    for(int i = 0; i < no-1; i++){
      int ele = int.parse(stdin.readLineSync()!);
      res.add(ele);
    }
    for(int i = 0; i < no; i++){
      if(res.contains(i+1)){
        continue;
      }else{
        print("Missing number is ${i+1}\n");
      }
    }
  }
}