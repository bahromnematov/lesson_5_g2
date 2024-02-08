import 'package:flutter/material.dart';

class Homework1 extends StatefulWidget {
  const Homework1({super.key});

  @override
  State<Homework1> createState() => _Homework1State();
}

class _Homework1State extends State<Homework1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(height: 20,),
            Container(
              height: 200,
              width: 200,
              decoration: BoxDecoration(
               borderRadius: BorderRadius.circular(15),
                color: Colors.yellow
              ),
              child: Center(
                child: Text("Radius 15"),
              ),
            ),
            SizedBox(height: 20,),
            Container(
              height: 200,
              width: 200,
              decoration: BoxDecoration(
               borderRadius: BorderRadius.circular(25),
                color: Colors.yellow
              ),
              child: Center(
                child: Text("Radius 25"),
              ),
            ),

          ],
        ),
      ),

    );
  }
}
