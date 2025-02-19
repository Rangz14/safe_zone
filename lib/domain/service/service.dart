import 'package:freezed_annotation/freezed_annotation.dart';
part 'service.freezed.dart';
part 'service.g.dart';

@freezed
abstract class DonationService with _$DonationService {
  const factory DonationService({
    required String id,
    required String title,
    required String description,
    required String icon,
    required int approximateUnitPrice,
    required int createdAt,
  }) = _DonationService;
  factory DonationService.fromJson(Map<String, Object?> json) =>
      _$DonationServiceFromJson(json);
}
