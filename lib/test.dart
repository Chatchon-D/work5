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


  bool i = false;
  var count=0;
  
  
  /*var r =  Random();
  var answer = r.nextInt(5);
  print(answer);*/


  var r = Random();
  var answer = r.nextInt(100+1);
  //print(answer);

  print("Guess the number ");
  while(i==false) {
    stdout.write("Guess the number between 1 and 100 :");
    var input = stdin.readLineSync();
    var guess=int.tryParse(input!);
    if(guess!=null) {
      if (guess == answer) {
        count++;
        print(guess.toString()+" is correct ❤, total guesses :"+count.toString());
        i = true;
        //break;
      }
      else {
        if (guess>answer) {
          print(guess.toString()+" is TOO HIGH! ▲");
        }
        else if(guess<answer){
          print(guess.toString()+" is TOO LOW! ▼");
        }
        count++;
      }
      //print(count);
    }
  }
}



