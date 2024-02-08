import 'package:flutter/material.dart';

class FourPage extends StatefulWidget {
  const FourPage({super.key});

  @override
  State<FourPage> createState() => _FourPageState();
}

class _FourPageState extends State<FourPage> {
  int _selectIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        children: [
          NavigationRail(
            selectedIndex: _selectIndex,
            onDestinationSelected: (int index) {
              setState(() {
                _selectIndex = index;
              });
            },
            labelType: NavigationRailLabelType.selected,
            destinations: [
              NavigationRailDestination(
                  icon: Icon(Icons.favorite_border),
                  selectedIcon: Icon(Icons.favorite),

                  label: Text("Like")),
              NavigationRailDestination(
                  icon: Icon(Icons.star_border),
                  selectedIcon: Icon(Icons.star),

                  label: Text("Stars")),
              NavigationRailDestination(
                  icon: Icon(Icons.bookmark_add_outlined),
                  selectedIcon: Icon(Icons.bookmark_add),

                  label: Text("Save")),
              NavigationRailDestination(
                  icon: Icon(Icons.bookmark_add_outlined),
                  selectedIcon: Icon(Icons.bookmark_add),

                  label: Text("Save")),
              NavigationRailDestination(
                  icon: Icon(Icons.bookmark_add_outlined),
                  selectedIcon: Icon(Icons.bookmark_add),

                  label: Text("Save")),
            ],
          )
        ],
      ),
    );
  }
}
