import 'package:freezed_annotation/freezed_annotation.dart';
part 'thread_category.freezed.dart';
part 'thread_category.g.dart';

@freezed
abstract class ThreadCategory with _$ThreadCategory {
  const factory ThreadCategory({
    required String id,
    required String name,
    required String description,
    required String icon,
    required int createdAt,
  }) = _ThreadCategory;
  factory ThreadCategory.fromJson(Map<String, Object?> json) =>
      _$ThreadCategoryFromJson(json);
}
