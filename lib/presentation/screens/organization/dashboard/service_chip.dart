import 'package:flutter/material.dart';
import 'package:safe_zone/presentation/widgets/space.dart';
import 'package:safe_zone/presentation/widgets/text.dart';

class OrgServiceChip extends StatelessWidget {
  final String title;
  final String image;

  const OrgServiceChip({super.key, required this.title, required this.image});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20),
      child: Material(
        shape: StadiumBorder(),
        color: Colors.black.withAlpha(75),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            children: [
              CircleAvatar(radius: 15, backgroundImage: AssetImage(image)),
              const HGap(),
              TextRegular(title, bold: true),
              const HGap(),
            ],
          ),
        ),
      ),
    );
  }
}
