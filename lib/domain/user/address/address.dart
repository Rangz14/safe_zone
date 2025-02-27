import 'package:freezed_annotation/freezed_annotation.dart';
part 'address.freezed.dart';
part 'address.g.dart';

@freezed
abstract class SafeZoneUserAddress with _$SafeZoneUserAddress {
  const factory SafeZoneUserAddress({
    required String userId,
    required String province,
    required String city,
    required String address,
    required int createdAt,
  }) = _SafeZoneUserAddress;
  factory SafeZoneUserAddress.fromJson(Map<String, Object?> json) =>
      _$SafeZoneUserAddressFromJson(json);

  factory SafeZoneUserAddress.init(
    String uid,
    String province,
    String city,
    String address,
  ) {
    return SafeZoneUserAddress(
      userId: uid,
      province: province,
      city: city,
      address: address,
      createdAt: DateTime.now().millisecondsSinceEpoch,
    );
  }
}
