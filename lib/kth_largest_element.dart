import 'dart:io';

void main(){
  List res = [];
  print("Enter the number of test cases");
  int tcases = int.parse(stdin.readLineSync()!);
  for(int i = 0; i < tcases;  i++){
    print("Enter the total number of elements");
    int total_element = int.parse(stdin.readLineSync()!);
    print("Enter elements");
    for(int i = 0; i < total_element; i++){
      res.add(int.parse(stdin.readLineSync()!));
    }
    print("Which kth largest element has to be found?");
    int kth_element = int.parse(stdin.readLineSync()!);

    if(kth_element-1 > total_element){
      print("Invalid Kth number provided");
      return;
    }
    res.sort((b, a) => a.compareTo(b),);
    print("Result: ${res[kth_element-1]}\n");
  }
}