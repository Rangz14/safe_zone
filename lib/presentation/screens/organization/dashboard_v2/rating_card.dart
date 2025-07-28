import 'package:flutter/material.dart';
import 'package:safe_zone/domain/donation_request/donation_request.dart';
import 'package:safe_zone/domain/organization/rating/rating.dart';
import 'package:safe_zone/domain/service/service.dart';
import 'package:safe_zone/domain/threat/threat_category/threat_category.dart';
import 'package:safe_zone/domain/user/user.dart';
import 'package:timeago/timeago.dart' as timeago;

class RatingCard extends StatelessWidget {
  // The constructor now takes all the necessary data models
  final OrganizationRating rating;
  final SafeZoneUser user;
  final DonationService service;
  final ThreatCategory threatCategory;
  final DonationRequest request;

  const RatingCard({
    super.key,
    required this.rating,
    required this.user,
    required this.service,
    required this.threatCategory,
    required this.request,
  });

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final timeAgo = timeago.format(
      DateTime.fromMillisecondsSinceEpoch(rating.createdAt),
    );

    return Card(
      color: Colors.white.withAlpha(25),
      margin: const EdgeInsets.only(bottom: 16.0),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Top Row: User Info and Time
            Row(
              children: [
                CircleAvatar(
                  backgroundImage: AssetImage(user.image), // From SafeZoneUser
                  onBackgroundImageError: (_, __) {},
                ),
                const SizedBox(width: 12),
                Text(
                  user.name,
                  style: theme.textTheme.titleMedium,
                ), // From SafeZoneUser
                const Spacer(),
                Text(timeAgo, style: theme.textTheme.bodySmall),
              ],
            ),
            const Divider(height: 24),

            // Service Info and Stars
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                _buildInfoRow(
                  theme,
                  // Use Image.asset for the service icon
                  icon: Image.asset(service.icon, width: 18, height: 18),
                  title:
                      "${service.title} (x${request.units})", // From DonationService & DonationRequest
                ),
                _buildStarRating(rating.rating), // From OrganizationRating
              ],
            ),

            // Threat Category Info
            const SizedBox(height: 8),
            _buildInfoRow(
              theme,
              // Use Image.asset for the threat icon
              icon: Image.asset(threatCategory.icon, width: 18, height: 18),
              title: threatCategory.name, // From ThreatCategory
            ),

            // Optional Review Text
            if (rating.review != null && rating.review!.isNotEmpty) ...[
              const SizedBox(height: 16),
              Container(
                width: double.infinity,
                padding: const EdgeInsets.all(12),
                decoration: BoxDecoration(
                  color: theme.colorScheme.surface,
                  borderRadius: BorderRadius.circular(8),
                  border: Border(
                    left: BorderSide(
                      color: theme.colorScheme.primary,
                      width: 4,
                    ),
                  ),
                ),
                child: Text(
                  rating.review!, // From OrganizationRating
                  style: theme.textTheme.bodyMedium?.copyWith(
                    fontStyle: FontStyle.italic,
                  ),
                ),
              ),
            ],
          ],
        ),
      ),
    );
  }

  // Helper updated to accept a Widget for the icon
  Widget _buildInfoRow(
    ThemeData theme, {
    required Widget icon,
    required String title,
  }) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        Theme(
          data: theme.copyWith(
            iconTheme: IconThemeData(color: theme.colorScheme.primary),
          ),
          child: icon,
        ),
        const SizedBox(width: 12),
        Flexible(child: Text(title, style: theme.textTheme.bodyMedium)),
      ],
    );
  }

  // Helper widget to display the stars - no changes needed
  Widget _buildStarRating(int rating) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: List.generate(5, (index) {
        return Icon(
          index < rating ? Icons.star : Icons.star_border,
          color: Colors.amber,
          size: 20,
        );
      }),
    );
  }
}
