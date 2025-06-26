import 'package:auto_route/annotations.dart';
import 'package:flutter/material.dart';

@RoutePage()
class OrgDashboardPage extends StatelessWidget {
  const OrgDashboardPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(body: Center(child: Text("Org Dashboard Page")));
  }
}
