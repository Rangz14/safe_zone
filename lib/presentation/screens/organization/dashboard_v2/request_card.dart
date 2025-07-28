import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:latlong2/latlong.dart';
import 'package:safe_zone/core/constants.dart';
import 'package:safe_zone/domain/donation_request/donation_request.dart';
import 'package:safe_zone/domain/service/service.dart';
import 'package:safe_zone/domain/threat/threat_category/threat_category.dart';
import 'package:safe_zone/domain/town/town.dart';
import 'package:safe_zone/domain/user/user.dart';
import 'package:timeago/timeago.dart' as timeago;

class RequestCard extends StatelessWidget {
  // The constructor now takes all the necessary data models.
  // This makes the widget self-contained and easy to test.
  final DonationRequest request;
  final SafeZoneUser user;
  final DonationService service;
  final ThreatCategory threatCategory;
  final Town town;

  const RequestCard({
    super.key,
    required this.request,
    required this.user,
    required this.service,
    required this.threatCategory,
    required this.town,
  });

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final timeAgo = timeago.format(
      DateTime.fromMillisecondsSinceEpoch(request.createdAt),
    );
    final coordinates = LatLng(request.latitude, request.longitude);

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
                  backgroundImage: AssetImage(
                    user.image,
                  ), // Use user model for image
                  onBackgroundImageError: (_, __) {},
                ),
                const SizedBox(width: 12),
                Text(
                  user.name,
                  style: theme.textTheme.titleMedium,
                ), // Use user model for name
                const Spacer(),
                Text(timeAgo, style: theme.textTheme.bodySmall),
              ],
            ),
            const Divider(height: 24),

            // Info Rows
            _buildInfoRow(
              theme,
              icon: const Icon(
                Icons.location_on_outlined,
                size: 18,
              ), // Keep location icon
              title: town.town, // Use town model for location name
              isLocation: true,
              onTap: () => _showMapDialog(context, coordinates, town.town),
            ),
            _buildInfoRow(
              theme,
              // Use Image.asset for the service icon from the data model
              icon: Image.asset(service.icon, width: 18, height: 18),
              title:
                  "${service.title} (x${request.units})", // Use service and request models
            ),
            _buildInfoRow(
              theme,
              // Use Image.asset for the threat icon from the data model
              icon: Image.asset(threatCategory.icon, width: 18, height: 18),
              title: threatCategory.name, // Use threat category model
            ),

            // Action Button
            if (request.state != DonationRequestState.donated) ...[
              const SizedBox(height: 16),
              Align(
                alignment: Alignment.centerRight,
                child: _buildActionButton(context),
              ),
            ],
          ],
        ),
      ),
    );
  }

  // Helper for info rows, now accepts a Widget for the icon for more flexibility
  Widget _buildInfoRow(
    ThemeData theme, {
    required Widget icon,
    required String title,
    bool isLocation = false,
    VoidCallback? onTap,
  }) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 4.0),
      child: InkWell(
        onTap: onTap,
        borderRadius: BorderRadius.circular(4),
        child: Padding(
          padding: const EdgeInsets.all(4.0),
          child: Row(
            children: [
              // The icon parameter is now a Widget, so it can be an Icon or an Image
              Theme(
                data: theme.copyWith(
                  iconTheme: IconThemeData(color: theme.colorScheme.primary),
                ),
                child: icon,
              ),
              const SizedBox(width: 12),
              Expanded(child: Text(title, style: theme.textTheme.bodyMedium)),
              if (isLocation)
                Icon(
                  Icons.open_in_new,
                  size: 16,
                  color: theme.textTheme.bodySmall?.color,
                ),
            ],
          ),
        ),
      ),
    );
  }

  // Builds the correct action button based on the request state
  Widget _buildActionButton(BuildContext context) {
    // This logic remains the same, just uses the correct enum
    switch (request.state) {
      case DonationRequestState.pending:
        return FilledButton.icon(
          onPressed: () {
            /* TODO: Implement Accept Logic */
          },
          icon: const Icon(Icons.check_circle_outline),
          label: const Text("Accept"),
        );
      case DonationRequestState.accepted:
        return FilledButton.icon(
          onPressed: () {
            /* TODO: Implement Fund Raised Logic */
          },
          icon: const Icon(Icons.volunteer_activism_outlined),
          label: const Text("Fund Raised"),
          style: FilledButton.styleFrom(
            backgroundColor: Colors.orange.shade700,
          ),
        );
      case DonationRequestState.fundRaised:
        return FilledButton.icon(
          onPressed: () {
            /* TODO: Implement Complete Logic */
          },
          icon: const Icon(Icons.task_alt_outlined),
          label: const Text("Complete Donation"),
          style: FilledButton.styleFrom(backgroundColor: Colors.green.shade700),
        );
      case DonationRequestState.donated:
        return const SizedBox.shrink(); // No button for donated state
    }
  }

  // The Map Dialog - no changes needed here, it's already perfect
  void _showMapDialog(
    BuildContext context,
    LatLng coordinates,
    String address,
  ) {
    showDialog(
      context: context,
      builder:
          (context) => AlertDialog(
            title: const Text("Location"),
            content: SizedBox(
              width: 400,
              height: 300,
              child: FlutterMap(
                options: MapOptions(
                  initialCenter: coordinates,
                  initialZoom: 15.0,
                ),
                children: [
                  TileLayer(
                    urlTemplate:
                        'https://tile.openstreetmap.org/{z}/{x}/{y}.png',
                    userAgentPackageName: 'com.safezone.app',
                  ),
                  MarkerLayer(
                    markers: [
                      Marker(
                        width: 80.0,
                        height: 80.0,
                        point: coordinates,
                        child: Icon(
                          Icons.location_on,
                          color: Colors.red,
                          size: 40.0,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            actions: [
              TextButton.icon(
                icon: const Icon(Icons.copy_all_outlined),
                label: const Text("Copy Coordinates"),
                onPressed: () {
                  final coordString =
                      "${coordinates.latitude}, ${coordinates.longitude}";
                  Clipboard.setData(ClipboardData(text: coordString));
                  Navigator.of(context).pop(); // Close dialog
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(
                      content: Text("Copied to clipboard: $coordString"),
                    ),
                  );
                },
              ),
              TextButton(
                onPressed: () => Navigator.of(context).pop(),
                child: const Text("Close"),
              ),
            ],
          ),
    );
  }
}
