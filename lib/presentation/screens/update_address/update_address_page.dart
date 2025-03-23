import 'package:auto_route/annotations.dart';
import 'package:flutter/material.dart';

@RoutePage()
class UpdateAddressPage extends StatelessWidget {
  const UpdateAddressPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(body: Center(child: Text("Update Address Page")));
  }
}
