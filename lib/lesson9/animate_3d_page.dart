import 'package:flutter/material.dart';

class Animate3dPage extends StatefulWidget {
  const Animate3dPage({super.key});

  @override
  State<Animate3dPage> createState() => _Animate3dPageState();
}

class _Animate3dPageState extends State<Animate3dPage>
    with SingleTickerProviderStateMixin {
  late AnimationController _mycontroller;

  late Animation<double> _rotateAnimation;
  late Animation<double> _slideAnimation;
  late Animation<double> _opacityAnimation;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _mycontroller =
        AnimationController(vsync: this, duration: Duration(seconds: 3));

    _rotateAnimation = Tween(end: 0.15, begin: 0.0).animate(CurvedAnimation(
        parent: _mycontroller,
        curve: Interval(0.0, 0.5, curve: Curves.bounceInOut)));

    _slideAnimation = Tween(begin: 100.0, end: 600.0).animate(CurvedAnimation(
        parent: _mycontroller,
        curve: Interval(0.5, 1.0, curve: Curves.fastOutSlowIn)));

    _opacityAnimation = Tween(begin: 1.0, end: 0.0).animate(CurvedAnimation(
        parent: _mycontroller,
        curve: Interval(0.5, 1.0, curve: Curves.fastOutSlowIn)));

    _mycontroller.addStatusListener((status) {
      if (status == AnimationStatus.completed) {
        _mycontroller.repeat();
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: AnimatedBuilder(
        animation: _slideAnimation,
        builder: (context, ch) => Container(
          width: 220,
          height: 100,
          padding: EdgeInsets.all(0),
          margin: EdgeInsets.only(top: _slideAnimation.value, left: 75),
          child: RotationTransition(
            turns: _rotateAnimation,
            child: Center(
              child: Text(
                "Animation",
                style: TextStyle(
                    fontSize: 40,
                    fontWeight: FontWeight.bold,
                    color: Color.fromRGBO(0, 0, 128, _opacityAnimation.value)),
              ),
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
