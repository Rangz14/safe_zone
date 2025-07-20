import 'package:auto_route/annotations.dart';
import 'package:flutter/material.dart';
import 'package:safe_zone/presentation/screens/user/home/home_tab.dart';

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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
        type: BottomNavigationBarType.fixed, // Shows all labels
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(
            icon: Icon(Icons.list_alt),
            label: 'Requests',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.dangerous),
            label: 'Threats',
          ),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Profile'),
        ],
      ),
      body: IndexedStack(
        index: _selectedIndex,
        children: [
          // We pass the key to HomePage to access its state from the FAB
          const HomeTab(),
          const RequestsPage(),
          const ThreatsPage(),
          const ProfilePage(),
        ],
      ),
    );
  }
}

class RequestsPage extends StatelessWidget {
  const RequestsPage({super.key});
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Text('My Requests Page', style: TextStyle(fontSize: 24)),
      ),
    );
  }
}

class ThreatsPage extends StatelessWidget {
  const ThreatsPage({super.key});
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Text('All Threats Page', style: TextStyle(fontSize: 24)),
      ),
    );
  }
}

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Text('My Profile Page', style: TextStyle(fontSize: 24)),
      ),
    );
  }
}
