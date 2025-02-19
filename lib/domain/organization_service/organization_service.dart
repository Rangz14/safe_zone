import 'package:freezed_annotation/freezed_annotation.dart';
part 'organization_service.freezed.dart';
part 'organization_service.g.dart';

@freezed
abstract class OrganizationService with _$OrganizationService {
  const factory OrganizationService({
    required String id,
    required String organizationId,
    required String donationServiceId,
    required int createdAt,
  }) = _OrganizationService;
  factory OrganizationService.fromJson(Map<String, Object?> json) =>
      _$OrganizationServiceFromJson(json);
}
