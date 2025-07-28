import 'package:safe_zone/domain/user/address/address.dart';

final List<SafeZoneUserAddress> mockUserAddresses = [
  // Address for Nisansala in Kandy
  SafeZoneUserAddress(
    userId: 'user_nisansala',
    townId: 'central-kandy-kandy-gampola', // Kandy
    address: '25, Hill Street, Kandy',
    createdAt:
        DateTime.now()
            .subtract(const Duration(days: 145))
            .millisecondsSinceEpoch,
  ),
  // Address for Tharushi in Galle
  SafeZoneUserAddress(
    userId: 'user_tharushi',
    townId: 'southern-galle-galle-ambalangoda', // Galle
    address: '110/B, Lighthouse Rd, Galle Fort',
    createdAt:
        DateTime.now()
            .subtract(const Duration(days: 115))
            .millisecondsSinceEpoch,
  ),
  // Address for Kasun in Galle
  SafeZoneUserAddress(
    userId: 'user_kasun',
    townId: 'southern-galle-galle-ambalangoda', // Galle
    address: '43, Wackwella Road, Galle',
    createdAt:
        DateTime.now()
            .subtract(const Duration(days: 90))
            .millisecondsSinceEpoch,
  ),
  // Address for Fernando in Colombo
  SafeZoneUserAddress(
    userId: 'western-colombo-colombo-dehiwala',
    townId: 'town_03', // Wellawatta/Colombo
    address: '88, Marine Drive, Wellawatta, Colombo 06',
    createdAt:
        DateTime.now()
            .subtract(const Duration(days: 55))
            .millisecondsSinceEpoch,
  ),
];
