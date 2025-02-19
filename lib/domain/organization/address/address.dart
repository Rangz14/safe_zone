import 'package:freezed_annotation/freezed_annotation.dart';
part 'address.freezed.dart';
part 'address.g.dart';

@freezed
abstract class OrganizationAddress with _$OrganizationAddress {
  const factory OrganizationAddress({
    required String organizationId,
    required String province,
    required String city,
    required String address,
    required int createdAt,
  }) = _OrganizationAddress;
  factory OrganizationAddress.fromJson(Map<String, Object?> json) =>
      _$OrganizationAddressFromJson(json);
}
