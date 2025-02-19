import 'package:freezed_annotation/freezed_annotation.dart';
part 'user.freezed.dart';
part 'user.g.dart';

@freezed
abstract class SafeZoneUser with _$SafeZoneUser {
  const factory SafeZoneUser({
    required String id,
    required String name,
    required String phone,
    required String image,
    required int createdAt,
  }) = _SafeZoneUser;
  factory SafeZoneUser.fromJson(Map<String, Object?> json) =>
      _$SafeZoneUserFromJson(json);
}
