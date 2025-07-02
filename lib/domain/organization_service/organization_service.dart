import 'package:freezed_annotation/freezed_annotation.dart';
part 'organization_service.freezed.dart';
part 'organization_service.g.dart';

@freezed
abstract class OrganizationService with _$OrganizationService {
  const factory OrganizationService({
    required String id,
    required String serviceId,
    required String orgId,
    required int createdAt,
  }) = _OrganizationService;
  factory OrganizationService.fromJson(Map<String, Object?> json) =>
      _$OrganizationServiceFromJson(json);

  factory OrganizationService.init(String serviceId, String orgId) =>
      OrganizationService(
        id: "",
        orgId: orgId,
        serviceId: serviceId,
        createdAt: DateTime.now().millisecondsSinceEpoch,
      );
}
