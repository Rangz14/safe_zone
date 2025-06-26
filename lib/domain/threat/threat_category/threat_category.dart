import 'package:freezed_annotation/freezed_annotation.dart';
part 'thread_category.freezed.dart';
part 'threat_category.g.dart';

@freezed
abstract class ThreatCategory with _$ThreatCategory {
  const factory ThreatCategory({
    required String id,
    required String name,
    required String description,
    required String icon,
    required int createdAt,
  }) = _ThreadCategory;
  factory ThreatCategory.fromJson(Map<String, Object?> json) =>
      _$ThreatCategoryFromJson(json);

  factory ThreatCategory.empty() => ThreatCategory(
    id: '',
    name: '',
    description: '',
    icon: '',
    createdAt: DateTime.now().millisecondsSinceEpoch,
  );
}
