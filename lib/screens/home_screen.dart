import 'package:flutter/material.dart';
import 'package:flutter_medical_reminder/providers/bottom_nav_provider.dart';
import 'package:flutter_medical_reminder/screens/dashboard.dart';
import 'package:flutter_medical_reminder/widgets/widgets.dart';
import 'package:provider/provider.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    final Map screenMap = {
      0: Dashboard(),
      1: Dashboard(),//'Calendar()',
      2: Dashboard(),//'Add',
      3: Dashboard(),//'Chats',
      4: Dashboard()//'Profile'
    };
    final pageIndex = Provider.of<BottomNavProvider>(context);

    return Scaffold(
      backgroundColor: Colors.white,
      body: screenMap[pageIndex.currentPage],
      bottomNavigationBar: BottomNavigation(),
    );
  }
}
