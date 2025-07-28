// lib/presentation/user/main/user_main_page.dart

import 'package:auto_route/annotations.dart';
import 'package:flutter/material.dart';
import 'package:safe_zone/presentation/screens/user/home/widgets/home_tab.dart';
import 'package:safe_zone/presentation/screens/user/home/widgets/profile_tab.dart';
import 'package:safe_zone/presentation/screens/user/home/widgets/requests_tab.dart';
import 'package:safe_zone/presentation/screens/user/home/widgets/threats_tab.dart';

@RoutePage()
class UserMainPage extends StatefulWidget {
  const UserMainPage({super.key});

  @override
  State<UserMainPage> createState() => _UserMainPageState();
}

class _UserMainPageState extends State<UserMainPage> {
  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  // The list of pages is defined here for clarity.
  late final List<Widget> _pages;

  @override
  void initState() {
    super.initState();
    _pages = [
      const HomeTab(),
      const RequestsTab(),
      const ThreatsTab(), // Placeholder
      const ProfileTab(), // Placeholder
    ];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(index: _selectedIndex, children: _pages),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
        type: BottomNavigationBarType.fixed, // Good for 4+ items
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home_outlined),
            activeIcon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.list_alt_outlined),
            activeIcon: Icon(Icons.list_alt),
            label: 'Requests',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.dangerous_outlined),
            activeIcon: Icon(Icons.dangerous),
            label: 'Threats',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person_outline),
            activeIcon: Icon(Icons.person),
            label: 'Profile',
          ),
        ],
      ),
    );
  }
}
