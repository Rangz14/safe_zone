import 'package:flutter/material.dart';
import 'donation_request.dart'; // We can reuse the User model from here

// The enum you provided
enum DonationState {
  pending("Pending"),
  accepted("Accepted"),
  declined("Declined");

  final String value;
  const DonationState(this.value);
}

// Model for a single donation
class Donation {
  final User user;
  final String serviceTitle;
  final IconData serviceIcon;
  final int unitCount;
  final String payslipUrl; // Path to the payslip image
  final DonationState state;

  Donation({
    required this.user,
    required this.serviceTitle,
    required this.serviceIcon,
    required this.unitCount,
    required this.payslipUrl,
    required this.state,
  });
}
