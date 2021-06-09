import 'package:flutter/material.dart';
import 'package:persistent_bottom_nav_bar/persistent-tab-view.dart';

class BottomNavigation extends StatefulWidget {
  @override
  _BottomNavigationState createState() => _BottomNavigationState();
}

class _BottomNavigationState extends State<BottomNavigation> {
  late int _selectedItem;

  @override
  void initState() {
    super.initState();
    _selectedItem = 0;
  }

  List<PersistentBottomNavBarItem> _navBarItems() => [
        PersistentBottomNavBarItem(
          icon: Icon(Icons.search),
          title: ("Search"),
          activeColorPrimary: Colors.teal,
          inactiveColorPrimary: Colors.grey,
        ),
        PersistentBottomNavBarItem(
          icon: Icon(Icons.add),
          title: ("Add"),
          activeColorPrimary: Colors.green,
          activeColorSecondary: Colors.white,
          inactiveColorPrimary: Colors.white,
        ),
        PersistentBottomNavBarItem(
          icon: Icon(Icons.message),
          title: ("Messages"),
          activeColorPrimary: Colors.green,
          inactiveColorPrimary: Colors.grey,
        ),
      ];

  @override
  Widget build(BuildContext context) {
    return PersistentBottomNavBar(
      margin: EdgeInsets.all(10.0),
      navBarDecoration: NavBarDecoration(colorBehindNavBar: Colors.black),
      confineToSafeArea: true,
      hideNavigationBar: false,
      navBarEssentials: NavBarEssentials(
        items: _navBarItems(),
        selectedIndex: _selectedItem,
        backgroundColor: Colors.white,
        navBarHeight: 60.0,
        onItemSelected: (value) {
          setState(() {
            _selectedItem = value;
          });
        },
      ),
      navBarStyle: NavBarStyle.style16,
    );
  }
}
