import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:safe_zone/domain/town/i_town_repo.dart';
import 'package:safe_zone/domain/town/town.dart';
import 'package:safe_zone/injection.dart';
part 'address.freezed.dart';
part 'address.g.dart';

@freezed
abstract class SafeZoneUserAddress with _$SafeZoneUserAddress {
  const SafeZoneUserAddress._();
  const factory SafeZoneUserAddress({
    required String userId,
    required String townId,
    required String address,
    required int createdAt,
  }) = _SafeZoneUserAddress;
  factory SafeZoneUserAddress.fromJson(Map<String, Object?> json) =>
      _$SafeZoneUserAddressFromJson(json);

  factory SafeZoneUserAddress.empty() {
    return SafeZoneUserAddress(
      userId: '',
      townId: '',
      address: '',
      createdAt: DateTime.now().millisecondsSinceEpoch,
    );
  }

  Town get town => getIt<ITownRepo>().get(townId);
}
