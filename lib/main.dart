import 'package:flutter/cupertino.dart';
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
      appBar: AppBar(
        title: Text('GUESS THE NUMBER'),
      ),
      body: Container(// เป็นกล่องๆหนึ่งที่ไว้เอาของยัดเข้ามา
        decoration: BoxDecoration(
            //สำหรับตกแต่ง
            color: Colors.lightBlueAccent /*.withOpacity(0.5)   สีโปร่งใส*/,
            border: Border.all(width: 2.0, color: Colors.green),
            boxShadow: [
              BoxShadow(
                  color: Colors.black.withOpacity(0.5),
                  offset: Offset(2.0, 5.0), // (x ถ้าพวกไปขวา,y ถ้าบวกลงล่าง)
                  blurRadius: 5.0, //สีเบลอ
                  spreadRadius: 5.0 // ไกลออกไป
                  )
            ]),
        //alignment: Alignment.center,
        child: Center(// alt+enter  wrap center
          child: Column(
            mainAxisSize: MainAxisSize.min,
            //crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset('assets/images/guess_logo.png',width:100,height:100,),
                  Column(
                    children: [
                      Text('GUESS',style: TextStyle(fontSize: 50.0 ,color: Colors.cyanAccent),),
                      Text('THE NUMBER',style: TextStyle(fontSize: 30.0 ,color: Colors.cyanAccent),),
                    ],
                  ),


                ],
              ),
              SizedBox(height: 20,),
              Padding(
                padding: const EdgeInsets.all(40.0),
                child: TextField(),
              ),

              ElevatedButton(
                child: Text('GUESS'),
                onPressed: () {},
              ),
            ],
          ),
        ),
      ),
    ); //เปลี่ยนพื้นหลังเป็นสีขาว
  }
}
