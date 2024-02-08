import 'package:flutter/material.dart';
import 'package:flutter_speed_dial/flutter_speed_dial.dart';
import 'package:lesson_5_g2/home_page.dart';
import 'package:lesson_5_g2/second_page.dart';

class FirstPage extends StatefulWidget {
  static final String id="first_page";
  const FirstPage({super.key});

  @override
  State<FirstPage> createState() => _FirstPageState();
}

class _FirstPageState extends State<FirstPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Lesson 8"),
      ),
      body: Center(
        child: Text("Lesson 8",style: TextStyle(fontSize: 30),),
      ),
      floatingActionButton: SpeedDial(
        animatedIcon: AnimatedIcons.menu_close,
        overlayColor: Colors.black,
        overlayOpacity: 0.6,
        backgroundColor: Colors.grey,
        foregroundColor: Colors.black,
        shape: CircleBorder(),
        children: [
          SpeedDialChild(
            child: Icon(Icons.accessibility_new,color: Colors.white,),
            backgroundColor: Colors.red,
            label: "First",
            labelStyle: TextStyle(fontSize: 16),
            onTap: (){}

          ),
          SpeedDialChild(
              child: Icon(Icons.settings,color: Colors.white,),
              backgroundColor: Colors.green,
              label: "Second",
              labelStyle: TextStyle(fontSize: 16),
              onTap: (){
                Navigator.pushNamed(context, HomePage.id);
              }

          ),
          SpeedDialChild(
              child: Icon(Icons.access_alarms_outlined,color: Colors.white,),
              backgroundColor: Colors.greenAccent,
              label: "Third",
              labelStyle: TextStyle(fontSize: 16),
              onTap: (){}

          ),
          SpeedDialChild(
              child: Icon(Icons.add_call,color: Colors.white,),
              backgroundColor: Colors.yellow,
              label: "Four",
              labelStyle: TextStyle(fontSize: 16),
              onTap: (){}

          )
        ],
      )
    );
  }
}
