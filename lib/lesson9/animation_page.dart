import 'package:flutter/material.dart';

class AnimationPage extends StatefulWidget {
  const AnimationPage({super.key});

  @override
  State<AnimationPage> createState() => _AnimationPageState();
}

class _AnimationPageState extends State<AnimationPage> with SingleTickerProviderStateMixin {
  late AnimationController _mycontroller;
  late Animation<Offset> _myanimation;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _mycontroller =
        AnimationController(vsync: this, duration: Duration(seconds: 3));

    _myanimation = Tween(begin: Offset.zero,end: Offset(1.5,0.0))
    .animate(CurvedAnimation(parent: _mycontroller, curve: Curves.elasticIn));

    // _mycontroller.addStatusListener((status) {
    //   if (status == AnimationStatus.completed) {
    //     _mycontroller.repeat();
    //   }
    // });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SlideTransition(
          position: _myanimation,
          child: Padding(
            padding: EdgeInsets.all(12),
            child: Image.asset("assets/heart.jpg",height: 200,width: 200,fit: BoxFit.cover,),
          ),
        )
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          _mycontroller.forward();
        },
        child: Icon(Icons.play_arrow),
      ),
    );
  }
}
