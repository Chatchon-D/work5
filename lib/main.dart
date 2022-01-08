import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'GUESS THE NUMBER',
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('GUESS THE NUMBER')),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Container(
            decoration: BoxDecoration(color: Colors.greenAccent),
            child:Center(
                child:Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset('assets/images/guess_logo.png',width:100,height:100,),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text('GUESS',style:TextStyle(fontSize: 40,color: Colors.lightBlue),),
                            Text('THE NUMBER',style:TextStyle(fontSize: 20,color: Colors.lightBlue),),
                          ],)
                      ],
                    ),
                    SizedBox(height: 40,),
                    Padding(
                      padding: const EdgeInsets.all(40.0),
                      child: TextField(),
                    ),
                    ElevatedButton(onPressed: (){},child: Text('GUESS'),),
                  ],
                )
            )
        ),
      ),
    );
/*      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
          decoration: BoxDecoration(
              color: Colors.lightBlueAccent,
              border: Border.all(width: 2, color: Colors.black),
              boxShadow: const [BoxShadow(
              )]),
          alignment: Alignment.center,
          child: Center(
            child: Column(
              //mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Image.asset('assets/images/guess_logo.png'),
                TextField(),
                ElevatedButton(
                  child: Text('Random'),
                  onPressed: (){
                  },
                )
              ],
            ),
          ),
        ),
      ),
    );*/
  }
}