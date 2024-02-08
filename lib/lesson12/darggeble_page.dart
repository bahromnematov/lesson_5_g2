import 'package:flutter/material.dart';

class DragPage extends StatefulWidget {
  const DragPage({super.key});

  @override
  State<DragPage> createState() => _DragPageState();
}

class _DragPageState extends State<DragPage> {
  int acceptedData = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Draggable Page"),
        ),
        body: Container(
          padding: EdgeInsets.only(top: 26),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Draggable(
                data: 10,
                child: Container(
                  height: 100,
                  width: 100,
                  color: Colors.lightGreenAccent,
                  child: Center(
                    child: Text("Draggeble"),
                  ),
                ),
                feedback: Container(
                  color: Colors.deepOrange,
                  height: 100,
                  width: 100,
                  child: Icon(Icons.directions_run),
                ),
                childWhenDragging: Container(
                  height: 100,
                  width: 100,
                  color: Colors.lightGreenAccent,
                  child: Center(
                    child: Text("Child When Draging"),
                  ),
                ),
              ),
              DragTarget<int>(
                builder: (BuildContext context, List<dynamic> accepted, List<dynamic> rejected) {
                  return Container(
                    height: 100,
                    width: 100,
                    color: Colors.cyan,
                    child: Center(
                      child: Text("Value is Update to $acceptedData"),
                    ),
                  );
                },
                onAccept: (int data) {
                  setState(() {
                    acceptedData += data;
                  });
                },
              )
            ],
          ),
        ));
  }
}
