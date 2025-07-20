import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:latlong2/latlong.dart';
import 'package:safe_zone/presentation/screens/organization/dashboard_v2/donation_request.dart';
import 'package:timeago/timeago.dart' as timeago;

class RequestCard extends StatelessWidget {
  final DonationRequest request;

  const RequestCard({super.key, required this.request});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final timeAgo = timeago.format(request.createdAt);

    return Card(
      // Use a slightly different background color from the main card
      // to make it stand out, but still theme-aware.
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
                  backgroundImage: AssetImage(request.user.avatarUrl),
                  onBackgroundImageError:
                      (_, __) {}, // Handle image errors gracefully
                ),
                const SizedBox(width: 12),
                Text(request.user.name, style: theme.textTheme.titleMedium),
                const Spacer(),
                Text(timeAgo, style: theme.textTheme.bodySmall),
              ],
            ),
            const Divider(height: 24),

            // Info Rows
            _buildInfoRow(
              theme,
              icon: Icons.location_on_outlined,
              title: request.locationAddress,
              isLocation: true,
              context: context,
            ),
            _buildInfoRow(
              theme,
              icon: request.serviceIcon,
              title: "${request.serviceTitle} (x${request.unitCount})",
            ),
            _buildInfoRow(
              theme,
              icon: request.threatIcon,
              title: request.threatCategory,
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

  // Helper for info rows to avoid repetition
  Widget _buildInfoRow(
    ThemeData theme, {
    required IconData icon,
    required String title,
    bool isLocation = false,
    BuildContext? context,
  }) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 4.0),
      child: InkWell(
        onTap:
            isLocation
                ? () => _showMapDialog(
                  context!,
                  request.coordinates,
                  request.locationAddress,
                )
                : null,
        borderRadius: BorderRadius.circular(4),
        child: Padding(
          padding: const EdgeInsets.all(4.0),
          child: Row(
            children: [
              Icon(icon, size: 18, color: theme.colorScheme.primary),
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

  // The Map Dialog
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
              width: 400, // Fixed size for dialog
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
                          color: Theme.of(context).colorScheme.primary,
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
