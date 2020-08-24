
import 'package:flutter/material.dart';
import 'package:flutter_calculator/pages/firstpage.dart';

void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Center(child: Text("CALCULATOR")),
        ),
body: Home(),
      ),

    );
  }
}
