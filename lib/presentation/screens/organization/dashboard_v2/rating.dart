import 'package:flutter/material.dart';
import 'donation_request.dart'; // Reusing the User model

class Rating {
  final User user;
  final String serviceTitle;
  final IconData serviceIcon;
  final int unitCount;
  final int starRating;
  final String? reviewText;
  // --- ADD THESE LINES ---
  final String threatCategory;
  final IconData threatIcon;
  final DateTime createdAt;

  Rating({
    required this.user,
    required this.serviceTitle,
    required this.serviceIcon,
    required this.unitCount,
    required this.starRating,
    this.reviewText,
    // --- ADD THESE LINES ---
    required this.threatCategory,
    required this.threatIcon,
    required this.createdAt,
  });
}
