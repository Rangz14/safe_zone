import 'package:freezed_annotation/freezed_annotation.dart';
part 'town.freezed.dart';
part 'town.g.dart';

@freezed
abstract class Town with _$Town {
  const factory Town({
    required String id,
    required String town,
    required String city,
    required String district,
    required String province,
  }) = _Town;
  factory Town.fromJson(Map<String, Object?> json) => _$TownFromJson(json);

  factory Town.empty() =>
      Town(id: '', town: '', city: '', district: '', province: '');
}
