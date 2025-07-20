import 'package:flutter/material.dart';
import 'package:safe_zone/presentation/screens/organization/dashboard_v2/rating.dart';
import 'package:timeago/timeago.dart' as timeago; // Make sure to import

class RatingCard extends StatelessWidget {
  final Rating rating;

  const RatingCard({super.key, required this.rating});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    // --- ADD THIS LINE ---
    final timeAgo = timeago.format(rating.createdAt);

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
                  backgroundImage: AssetImage(rating.user.avatarUrl),
                  onBackgroundImageError: (_, __) {},
                ),
                const SizedBox(width: 12),
                Text(rating.user.name, style: theme.textTheme.titleMedium),
                // --- ADD THESE 2 LINES ---
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
                  icon: rating.serviceIcon,
                  title: "${rating.serviceTitle} (x${rating.unitCount})",
                ),
                _buildStarRating(rating.starRating),
              ],
            ),

            // --- ADD THIS SECTION for Threat Category ---
            const SizedBox(height: 8),
            _buildInfoRow(
              theme,
              icon: rating.threatIcon,
              title: rating.threatCategory,
            ),

            // Optional Review Text
            if (rating.reviewText != null && rating.reviewText!.isNotEmpty) ...[
              const SizedBox(height: 16),
              Container(
                width: double.infinity, // Ensure it takes full width
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
                  rating.reviewText!,
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

  // Helper widget for info rows
  Widget _buildInfoRow(
    ThemeData theme, {
    required IconData icon,
    required String title,
  }) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        Icon(icon, size: 18, color: theme.colorScheme.primary),
        const SizedBox(width: 12),
        Text(title, style: theme.textTheme.bodyMedium),
      ],
    );
  }

  // Helper widget to display the stars
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
