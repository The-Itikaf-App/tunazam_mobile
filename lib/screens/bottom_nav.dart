import 'package:flutter/material.dart';
import 'package:remixicon/remixicon.dart';

class BottomNav extends StatefulWidget {
  const BottomNav({Key? key}) : super(key: key);

  @override
  _BottomNavState createState() => _BottomNavState();
}

class _BottomNavState extends State<BottomNav> {
  int _selectedIndex = 0;

  static final List<Widget>_screenList = <Widget>[
    const Text("Hello"),
    const Text("Hello 2"),
    const Text("Hello 3"),
    const Text("Hello 4"),
  ];

  void _onTabSelect(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: _screenList.elementAt(_selectedIndex)),
      bottomNavigationBar: BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(
            label: "Home1",
            icon: Icon(Remix.home_2_line),
            activeIcon: Icon(Remix.home_2_fill),
          ),
          BottomNavigationBarItem(
            label: "Discover",
            icon: Icon(Remix.compass_line),
            activeIcon: Icon(Remix.compass_fill),
          ),
          BottomNavigationBarItem(
            label: "Activity",
            icon: Icon(Remix.stack_line),
            activeIcon: Icon(Remix.stack_fill),
          ),
          BottomNavigationBarItem(
            label: "Profile",
            icon: Icon(Remix.user_6_line),
            activeIcon: Icon(Remix.user_6_fill),
          ),
        ],
        unselectedItemColor: Colors.amber[800],
        selectedItemColor: Colors.amber[800],
        currentIndex: _selectedIndex,
        enableFeedback: false,
        type: BottomNavigationBarType.fixed,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        onTap: _onTabSelect,
      ),
    );
  }
}
