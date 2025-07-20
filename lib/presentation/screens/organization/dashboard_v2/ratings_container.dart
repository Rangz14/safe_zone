import 'package:flutter/material.dart';
import 'package:safe_zone/presentation/screens/organization/dashboard_v2/donation_request.dart';
import 'package:safe_zone/presentation/screens/organization/dashboard_v2/rating.dart';
import 'package:safe_zone/presentation/screens/organization/dashboard_v2/rating_card.dart';

class RatingsContainer extends StatelessWidget {
  RatingsContainer({super.key});

  // --- DUMMY DATA ---
  final List<Rating> _allRatings = [
    Rating(
      user: User(name: "Chandana Silva", avatarUrl: "assets/images/user10.png"),
      serviceTitle: "Kids Clothes",
      serviceIcon: Icons.checkroom_outlined,
      unitCount: 20,
      starRating: 5,
      reviewText:
          "Amazing and fast service! The clothes were delivered to the family in need within a day. Thank you, Safe Zone!",
      // --- UPDATE HERE ---
      threatCategory: "Displacement",
      threatIcon: Icons.house_outlined,
      createdAt: DateTime.now().subtract(const Duration(days: 2)),
    ),
    Rating(
      user: User(name: "Aisha Mohammed", avatarUrl: "assets/images/user11.png"),
      serviceTitle: "Dry Rations",
      serviceIcon: Icons.food_bank_outlined,
      unitCount: 10,
      starRating: 4,
      reviewText:
          "Good work, but the coordination could be slightly better. Overall, very happy with the platform.",
      // --- UPDATE HERE ---
      threatCategory: "Economic Crisis",
      threatIcon: Icons.trending_down,
      createdAt: DateTime.now().subtract(const Duration(days: 5)),
    ),
    Rating(
      user: User(name: "Ravi Kumar", avatarUrl: "assets/images/user12.png"),
      serviceTitle: "Medicine",
      serviceIcon: Icons.medical_services_outlined,
      unitCount: 3,
      starRating: 5,
      reviewText: null,
      // --- UPDATE HERE ---
      threatCategory: "Medical Emergency",
      threatIcon: Icons.emergency_outlined,
      createdAt: DateTime.now().subtract(const Duration(days: 14)),
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.all(24.0),
            child: Text(
              "Donor Feedback",
              style: Theme.of(context).textTheme.headlineSmall,
            ),
          ),
          const Divider(height: 1),
          Expanded(
            child: ListView.builder(
              padding: const EdgeInsets.all(16.0),
              itemCount: _allRatings.length,
              itemBuilder: (context, index) {
                return RatingCard(rating: _allRatings[index]);
              },
            ),
          ),
        ],
      ),
    );
  }
}
