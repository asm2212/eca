import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:wpay/screens/blank_screen.dart';
import 'package:wpay/screens/home_screen.dart';
import 'package:wpay/screens/notification_screen.dart';
import 'package:wpay/screens/static_screen.dart';
import 'package:wpay/utils/constants.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int _currentIndex = 0;

  final List<Widget> _screens = [
    const HomeScreen(),
    const StaticScreen(),
    const BlankScreen(),
    const NotificationScreen(),
    const BlankScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _screens[_currentIndex],
      bottomNavigationBar: CurvedNavigationBar(
        backgroundColor: Colors.white, // Adjusted to avoid transparency issues
        color: Constants.primary,
        height: 60,
        index: _currentIndex,
        items: [
          _buildNavItem('assets/images/tab_home.png'),
          _buildNavItem('assets/images/tab_stat.png'),
          _buildNavItem('assets/images/tab_scan.png'),
          _buildNavItem('assets/images/tab_noti.png'),
          _buildNavItem('assets/images/tab_pro.png'),
        ],
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
      ),
    );
  }

  Widget _buildNavItem(String assetPath) {
    return Image.asset(
      assetPath,
      width: 24,
      height: 24,
      color: Colors.white,
    );
  }
}
