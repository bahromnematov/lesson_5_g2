import 'package:flutter/material.dart';

class AnimateBouncePage extends StatefulWidget {
  const AnimateBouncePage({super.key});

  @override
  State<AnimateBouncePage> createState() => _AnimateBouncePageState();
}

class _AnimateBouncePageState extends State<AnimateBouncePage>
    with SingleTickerProviderStateMixin {
  late AnimationController _mycontroller;
  late Animation _myanimation;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _mycontroller =
        AnimationController(vsync: this, duration: Duration(seconds: 5));

    _myanimation = (Tween(begin: 400.0, end: 80.0).animate(CurvedAnimation(
      parent: _mycontroller,
      curve: Interval(0.0, 1.0, curve: Curves.elasticIn),
    ))
      ..addStatusListener((status) {
        if (status == AnimationStatus.completed) {
          _mycontroller.repeat(reverse: true);
        }
      }));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: AnimatedBuilder(
          animation: _myanimation,
          builder: (context, ch) => Container(
            margin: EdgeInsets.only(top: _myanimation.value, left: 125),
            width: 100,
            height: 100,
            child: Image.asset(
              "assets/heart.jpg",
              fit: BoxFit.cover,
            ),
          ),
        ),
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
