import 'package:auto_route/annotations.dart';
import 'package:flutter/material.dart';

@RoutePage()
class AdminDashboardPage extends StatelessWidget {
  const AdminDashboardPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(child: Text("Admin DashboardPage Page")),
    );
  }
}
