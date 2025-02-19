import 'package:freezed_annotation/freezed_annotation.dart';
part 'thread.freezed.dart';
part 'thread.g.dart';

@freezed
abstract class SafeZoneThread with _$SafeZoneThread {
  const factory SafeZoneThread({
    required String id,
    required String state,
    required String city,
    required int startedAt,
    required int endedAt,
    required String threadCategoryId,
    required int createdAt,
  }) = _SafeZoneThread;
  factory SafeZoneThread.fromJson(Map<String, Object?> json) =>
      _$SafeZoneThreadFromJson(json);
}
