import 'package:auto_route/annotations.dart';
import 'package:flutter/material.dart';

@RoutePage()
class UpdateUserPage extends StatelessWidget {
  const UpdateUserPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(body: Center(child: Text("Update User Page")));
  }
}
