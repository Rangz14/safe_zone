import 'package:safe_zone/domain/user/user.dart';

final List<SafeZoneUser> mockUsers = [
  SafeZoneUser(
    id: 'user_nisansala',
    name: 'Nisansala',
    phone: '+94771112222',
    image: 'assets/images/users/nisansala.jpg',
    createdAt:
        DateTime.now()
            .subtract(const Duration(days: 150))
            .millisecondsSinceEpoch,
  ),
  SafeZoneUser(
    id: 'user_tharushi',
    name: 'Tharushi',
    phone: '+94713334444',
    image: 'assets/images/users/tharushi.jpg',
    createdAt:
        DateTime.now()
            .subtract(const Duration(days: 120))
            .millisecondsSinceEpoch,
  ),
  SafeZoneUser(
    id: 'user_kasun',
    name: 'Anuka',
    phone: '+94765556666',
    image: 'assets/images/users/kasun.jpg',
    createdAt:
        DateTime.now()
            .subtract(const Duration(days: 95))
            .millisecondsSinceEpoch,
  ),
  SafeZoneUser(
    id: 'user_fernando',
    name: 'Fernando',
    phone: '+94707778888',
    image: 'assets/images/users/fernando.jpg',
    createdAt:
        DateTime.now()
            .subtract(const Duration(days: 60))
            .millisecondsSinceEpoch,
  ),
];
