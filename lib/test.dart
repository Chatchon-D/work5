//top level function
import 'dart:io';
import 'dart:math';

void main(){
  /*print('Hello');
  dynamic  i = 1;
  print(i);
  i="Hello";
  print(i);*/

  //ภาษา dart จะ inter type ให้เรา ดูจากต่าเริ่มต้นที่เรากำหนด
  //กรบวนการ type inference
  //var i=123; //int


  var i = 0;
  
  
  
  /*var r =  Random();
  var answer = r.nextInt(5);
  print(answer);*/


  var r = Random();
  var answer = r.nextInt(5);
  print(answer);


  while(i<10) {
    stdout.write("Guess your number :");
    var input = stdin.readLineSync();
    var guess=int.tryParse(input!);
    if(guess==answer){
      print("correct");
      break;
    }
    else{
      print("false");
    }
    i++;
  }

}



