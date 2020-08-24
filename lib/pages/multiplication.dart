import 'package:flutter/material.dart';
import 'package:flutter_calculator/main.dart';

class Mul extends StatelessWidget {
  TextEditingController num1=TextEditingController();
  TextEditingController num2=TextEditingController();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Center(child: Text("Let's Multiply")),
        ),
        body: SingleChildScrollView(
            child: Container(
              padding: EdgeInsets.all(60),
              child: Column(
                children: [
                  SizedBox(height: 20.0,),
                  TextField(
                    controller: num1,
                    decoration: InputDecoration(
                      hintText: "Number 1",
                      prefixIcon: Icon(Icons.keyboard),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10.0)
                      ),

                    ),
                  ),
                  SizedBox(height: 20.0,),
                  TextField(
                    controller: num2,
                    decoration: InputDecoration(
                      hintText: "Number 2",
                      prefixIcon: Icon(Icons.keyboard),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10.0)
                      ),

                    ),
                  ),
                  SizedBox(height: 20.0,),
                  GestureDetector(
                    onTap: (){
                      var a=double.parse(num1.text);
                      var b=double.parse(num2.text);
                      var c=a*b;
                      print("$a*$b=$c");
                    },
                    child: Center(
                      child: Container(
                        child: Center(child: Text("MULTIPLY")),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Colors.blue
                        ),
                        height: 40,
                        width: 100,
                      ),
                    ),
                  ),
                  SizedBox(height: 200),
                  IconButton(
                      icon: Icon(Icons.arrow_back),
                      color: Colors.blue,
                      iconSize: 40,
                      onPressed: () {
                        Navigator.of(context).push(MaterialPageRoute(builder: (context)=>MyApp()));})
                ],
              ),
            )
        ),
      ),
    );
  }
}
