import 'package:safe_zone/domain/threat/threat.dart';

final List<SafeZoneThreat> mockThreats = [
  // Active Flood in Galle (Linked to a donation request)
  SafeZoneThreat(
    id: 'threat_00',
    townId: 'southern-galle-galle-ambalangoda', // Galle
    categoryId: 'tc_flood', // Flooding
    startedAt:
        DateTime.now().subtract(const Duration(days: 2)).millisecondsSinceEpoch,
    endedAt: 0,
    createdAt:
        DateTime.now().subtract(const Duration(days: 2)).millisecondsSinceEpoch,
  ),
  SafeZoneThreat(
    id: 'threat_01',
    townId: 'southern-galle-galle-ambalangoda', // Galle
    categoryId: 'tc_flood', // Flooding
    startedAt:
        DateTime.now().subtract(const Duration(days: 2)).millisecondsSinceEpoch,
    endedAt: DateTime.now().add(const Duration(days: 5)).millisecondsSinceEpoch,
    createdAt:
        DateTime.now().subtract(const Duration(days: 2)).millisecondsSinceEpoch,
  ),
  // Past Landslide in Kandy (Linked to a donation request)
  SafeZoneThreat(
    id: 'threat_02',
    townId: 'central-kandy-kandy-gampola', // Kandy
    categoryId: 'tc_landslide', // Landslide
    startedAt:
        DateTime.now()
            .subtract(const Duration(days: 20))
            .millisecondsSinceEpoch,
    endedAt:
        DateTime.now()
            .subtract(const Duration(days: 15))
            .millisecondsSinceEpoch,
    createdAt:
        DateTime.now()
            .subtract(const Duration(days: 20))
            .millisecondsSinceEpoch,
  ),
  // New: Upcoming Tsunami Warning for Jaffna
  SafeZoneThreat(
    id: 'threat_03',
    townId: 'western-colombo-colombo-dehiwala', // Jaffna
    categoryId: 'tc_tsunami', // Tsunami Warning
    startedAt:
        DateTime.now().add(const Duration(hours: 6)).millisecondsSinceEpoch,
    endedAt:
        DateTime.now()
            .add(const Duration(days: 1, hours: 6))
            .millisecondsSinceEpoch,
    createdAt: DateTime.now().millisecondsSinceEpoch,
  ),
  // New: Another Past Threat (Flood in Colombo)
  SafeZoneThreat(
    id: 'threat_04',
    townId: 'western-colombo-colombo-dehiwala', // Wellawatta/Colombo
    categoryId: 'tc_flood', // Flooding
    startedAt:
        DateTime.now()
            .subtract(const Duration(days: 90))
            .millisecondsSinceEpoch,
    endedAt:
        DateTime.now()
            .subtract(const Duration(days: 85))
            .millisecondsSinceEpoch,
    createdAt:
        DateTime.now()
            .subtract(const Duration(days: 90))
            .millisecondsSinceEpoch,
  ),
];
