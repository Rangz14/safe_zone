import 'package:freezed_annotation/freezed_annotation.dart';
part 'organization.g.dart';
part 'organization.freezed.dart';

@freezed
abstract class Organization with _$Organization {
  const factory Organization({
    required String id,
    required String name,
    required String address,
    required String phone,
    required String email,
    required String website,
    required String logo,
    required String description,
    required String coverImage,
    required int createdAt,
  }) = _Organization;
  factory Organization.fromJson(Map<String, Object?> json) =>
      _$OrganizationFromJson(json);
}
