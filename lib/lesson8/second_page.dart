import 'package:fancy_bottom_navigation_2/fancy_bottom_navigation.dart';
import 'package:flutter/material.dart';

class SecondPage2 extends StatefulWidget {
  const SecondPage2({super.key});

  @override
  State<SecondPage2> createState() => _SecondPage2State();
}

class _SecondPage2State extends State<SecondPage2> {
  late PageController _pageController;
  int curentIndex = 0;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _pageController = PageController();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Lesson 8"),
      ),
      body: PageView(
        controller: _pageController,
        onPageChanged: (index) {
          setState(() {
            index = curentIndex;
          });
        },
        children: [
          Container(
            color: Colors.yellow,
            child: Center(
              child: Text("Search"),
            ),
          ),
          Container(
            color: Colors.green,
            child: Center(
              child: Text("Home"),
            ),
          ),
          Container(
            color: Colors.red,
            child: Center(
              child: Text("Details"),
            ),
          ),
          Container(
            color: Colors.amber,
            child: Center(
              child: Text("Settings"),
            ),
          ),
        ],
      ),
      bottomNavigationBar: FancyBottomNavigation(
        tabs: [
          TabData(iconData: Icons.search, title: "Seartch"),
          TabData(iconData: Icons.home, title: "Home"),
          TabData(iconData: Icons.details, title: "Details"),
          TabData(iconData: Icons.settings, title: "Settings"),
        ],
        onTabChangedListener: (position) {
          setState(() {
            curentIndex = position;
            _pageController.jumpToPage(position);
          });
        },
      ),
    );
  }
}
