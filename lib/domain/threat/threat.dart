import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:safe_zone/domain/town/i_town_repo.dart';
import 'package:safe_zone/domain/town/town.dart';
import 'package:safe_zone/injection.dart';
part 'threat.freezed.dart';
part 'threat.g.dart';

@freezed
abstract class SafeZoneThreat with _$SafeZoneThreat {
  const SafeZoneThreat._();
  const factory SafeZoneThreat({
    required String id,
    required String townId,
    required int startedAt,
    required int endedAt,
    required String categoryId,
    required int createdAt,
  }) = _SafeZoneThreat;
  factory SafeZoneThreat.fromJson(Map<String, Object?> json) =>
      _$SafeZoneThreatFromJson(json);

  factory SafeZoneThreat.empty() => SafeZoneThreat(
    id: '',
    townId: '',
    startedAt: 0,
    endedAt: 0,
    categoryId: '',
    createdAt: DateTime.now().millisecondsSinceEpoch,
  );

  Town get town => getIt<ITownRepo>().get(townId);

  String get humanStartedAt {
    final dateTime = DateTime.fromMillisecondsSinceEpoch(startedAt);
    return '${dateTime.year}.${dateTime.month}.${dateTime.day} • ${dateTime.hour}:${dateTime.minute}';
  }

  String get humanEndedAt {
    final dateTime = DateTime.fromMillisecondsSinceEpoch(endedAt);
    return '${dateTime.year}.${dateTime.month}.${dateTime.day} • ${dateTime.hour}:${dateTime.minute}';
  }
}
