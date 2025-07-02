import 'package:auto_route/annotations.dart';
import 'package:flutter/material.dart';
import 'package:safe_zone/presentation/widgets/space.dart';
import 'package:safe_zone/presentation/widgets/text.dart';

@RoutePage()
class OrgDashboardPage extends StatelessWidget {
  const OrgDashboardPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverToBoxAdapter(
            child: Card(
              margin: const EdgeInsets.all(20),
              color: Colors.white.withAlpha(25),

              child: Column(
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(10),
                    child: Image.asset(
                      "assets/images/cover.jpg",
                      fit: BoxFit.fitWidth,
                      height: 160,
                      width: double.infinity,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(20),
                    child: Row(
                      children: [
                        CircleAvatar(
                          radius: 40,
                          backgroundImage: AssetImage(
                            "assets/images/avatar.png",
                          ),
                        ),
                        const HGap(gap: 10),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            TextMedium("The Ginger Cat", bold: true),
                            const VGap(gap: 5),
                            TextRegular("ginger@cat.meow"),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
