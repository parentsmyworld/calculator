import 'package:flutter/material.dart';
import 'package:flutter_calculator/pages/addition.dart';
import 'package:flutter_calculator/pages/division.dart';
import 'package:flutter_calculator/pages/multiplication.dart';
import 'package:flutter_calculator/pages/subtraction.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.all(50),
          child: Column(
            children: [
              GestureDetector(
                onTap: (){
                  Navigator.of(context).push(MaterialPageRoute(builder: (context)=>Add()));
                },
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.blue
                  ),
                  height: 80.0,
                  width: 600.0,
                  child: Center(child: Text("ADDITION")),
                ),
              ),
              SizedBox(height: 50.0,),
              GestureDetector(
        onTap: (){
      Navigator.of(context).push(MaterialPageRoute(builder: (context)=>Sub()));},
                child: Container(
                  decoration: BoxDecoration(
                      color: Colors.blue
                  ),
                  height: 80.0,
                  width: 600.0,
                  child: Center(child: Text("SUBTRACTION")),
                ),
              ),
              SizedBox(height: 50.0,),
              GestureDetector(
                onTap: (){
                  Navigator.of(context).push(MaterialPageRoute(builder: (context)=>Mul()));},
                child: Container(
                  decoration: BoxDecoration(
                      color: Colors.blue
                  ),
                  height: 80.0,
                  width: 600.0,
                  child: Center(child: Text("MULTIPLICATION")),
                ),
              ),
              SizedBox(height: 50.0,),
              GestureDetector(
    onTap: (){
    Navigator.of(context).push(MaterialPageRoute(builder: (context)=>Div()));},
                child: Container(
                  decoration: BoxDecoration(
                      color: Colors.blue
                  ),
                  height: 80.0,
                  width: 600.0,
                  child: Center(child: Text("DIVISION")),
                ),
              ),
            ],
          ),
        )
    );
  }
}
