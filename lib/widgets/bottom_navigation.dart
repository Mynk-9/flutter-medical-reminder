import 'package:flutter/material.dart';

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

  _updateSelectedItem(index) => setState(() {
        _selectedItem = index;
      });

  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      child: Padding(
        padding: const EdgeInsets.only(bottom: 40.0, top: 15.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            _navItem(Icons.dashboard, 0),
            _navItem(Icons.calendar_today, 1),
            FloatingActionButton(
              onPressed: () {},
              elevation: 0,
              highlightElevation: 0.0,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(18.0))),
              child: Container(
                child: Icon(Icons.add),
                decoration: BoxDecoration(
                  color: Colors.transparent,
                  boxShadow: [
                    BoxShadow(
                      color: Color.fromRGBO(27, 209, 93, 0.2),
                      blurRadius: 24,
                      spreadRadius: 2,
                      offset: Offset(0, 8)
                    )
                  ]
                ),
              ),
              backgroundColor: Color.fromRGBO(27, 209, 93, 1),
            ),
            _navItem(Icons.chat, 3),
            _navItem(Icons.person, 4)
          ],
        ),
      ),
    );
  }

  Widget _navItem(IconData iconData, int index) {
    return SizedBox(
      width: 40.0,
      height: 40.0,
      child: DecoratedBox(
        decoration: BoxDecoration(
            color: _selectedItem == index
                ? Color.fromRGBO(27, 209, 93, 0.07)
                : Colors.white,
            borderRadius: BorderRadius.all(Radius.circular(14.0))),
        child: IconButton(
          icon: Icon(iconData),
          iconSize: 15.0,
          onPressed: () {
            _updateSelectedItem(index);
          },
          color:
              _selectedItem == index ? Color.fromRGBO(27, 209, 93, 1) : Colors.grey,
          splashRadius: 0.1,
        ),
      ),
    );
  }
}
