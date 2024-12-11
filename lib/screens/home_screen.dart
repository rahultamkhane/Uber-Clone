import 'package:flutter/material.dart';
import 'package:uber_clone/constants/constants.dart';
import 'package:uber_clone/screens/account_screen.dart';
import 'package:uber_clone/screens/activity_screen.dart';
import 'package:uber_clone/screens/home_tab_screen.dart';
import 'package:uber_clone/screens/services_screen.dart';
import 'package:uber_clone/widgets/app_bars.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _selectedIndex = 0;

  final List appBars = [
    homeAppBar,
    sevicesAppBar,
    activityAppBar,
    accountAppBar,
  ];

  final List _tabs = [
    const HomeTabScreen(),
    const ServicesScreen(),
    const ActivityScreen(),
    const AccountScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: appBars[_selectedIndex],
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: _tabs[_selectedIndex],
      ),
      bottomNavigationBar: bottomNavBar(),
    );
  }

  Widget bottomNavBar() {
    return BottomNavigationBar(
      currentIndex: _selectedIndex,
      onTap: (value) {
        setState(() {
          _selectedIndex = value;
        });
      },
      items: const <BottomNavigationBarItem>[
        BottomNavigationBarItem(
          backgroundColor: Colors.white,
          icon: Icon(Icons.home),
          label: Constants.menuHome,
        ),
        BottomNavigationBarItem(
          backgroundColor: Colors.white,
          icon: Icon(Icons.apps_sharp),
          label: Constants.menuServices,
        ),
        BottomNavigationBarItem(
          backgroundColor: Colors.white,
          icon: Icon(Icons.assignment_outlined),
          label: Constants.menuActivity,
        ),
        BottomNavigationBarItem(
          backgroundColor: Colors.white,
          icon: Icon(Icons.person),
          label: Constants.menuActivity,
        ),
      ],
      backgroundColor: Colors.white,
      selectedItemColor: Colors.black,
      unselectedItemColor: Colors.grey,
    );
  }
}
