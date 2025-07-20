import 'package:flutter/material.dart';
import 'package:latlong2/latlong.dart';

// The enum you provided
enum DonationRequestState {
  pending("Pending"),
  accepted("Accepted"),
  fundRaised("Fund Raised"),
  donated("Donated");

  final String value;
  const DonationRequestState(this.value);
}

// A simple model for a user
class User {
  final String name;
  final String avatarUrl;

  User({required this.name, required this.avatarUrl});
}

// A model for the donation request itself
class DonationRequest {
  final User user;
  final String locationAddress;
  final LatLng coordinates;
  final String serviceTitle;
  final IconData serviceIcon;
  final int unitCount;
  final String threatCategory;
  final IconData threatIcon;
  final DateTime createdAt;
  final DonationRequestState state;

  DonationRequest({
    required this.user,
    required this.locationAddress,
    required this.coordinates,
    required this.serviceTitle,
    required this.serviceIcon,
    required this.unitCount,
    required this.threatCategory,
    required this.threatIcon,
    required this.createdAt,
    required this.state,
  });
}
