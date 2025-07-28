import 'package:safe_zone/domain/threat/threat_category/threat_category.dart';

final List<ThreatCategory> mockThreatCategories = [
  ThreatCategory(
    id: 'tc_flood',
    name: 'Flooding',
    description: 'High water levels overflowing into normally dry land.',
    icon: 'assets/images/threats/flood.jpg',
    createdAt:
        DateTime.now()
            .subtract(const Duration(days: 300))
            .millisecondsSinceEpoch,
  ),
  ThreatCategory(
    id: 'tc_landslide',
    name: 'Landslide',
    description:
        'The movement of rock, debris, or earth down a sloped section of land.',
    icon: 'assets/images/threats/landslide.jpg',
    createdAt:
        DateTime.now()
            .subtract(const Duration(days: 300))
            .millisecondsSinceEpoch,
  ),
  ThreatCategory(
    id: 'tc_tsunami',
    name: 'Tsunami Warning',
    description:
        'A series of waves in a water body caused by a large-scale disturbance.',
    icon: 'assets/images/threats/tsunami.jpg',
    createdAt:
        DateTime.now()
            .subtract(const Duration(days: 300))
            .millisecondsSinceEpoch,
  ),
];
