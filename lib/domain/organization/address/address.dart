import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:safe_zone/domain/town/i_town_repo.dart';
import 'package:safe_zone/domain/town/town.dart';
import 'package:safe_zone/injection.dart';
part 'address.freezed.dart';
part 'address.g.dart';

@freezed
abstract class OrganizationAddress with _$OrganizationAddress {
  const OrganizationAddress._();
  const factory OrganizationAddress({
    required String organizationId,
    required String townId,
    required String address,
    required int createdAt,
  }) = _OrganizationAddress;
  factory OrganizationAddress.fromJson(Map<String, Object?> json) =>
      _$OrganizationAddressFromJson(json);

  factory OrganizationAddress.empty() => OrganizationAddress(
    organizationId: "",
    townId: "",
    address: "",
    createdAt: DateTime.now().millisecondsSinceEpoch,
  );

  Town get town => getIt<ITownRepo>().get(townId);
}
