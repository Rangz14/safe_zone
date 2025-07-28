import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:safe_zone/domain/threat/i_threat_repo.dart';
import 'package:safe_zone/domain/threat/threat.dart';

part 'watch_both_threats_state.dart';
part 'watch_both_threats_cubit.freezed.dart';

@injectable
class WatchBothThreatsCubit extends Cubit<WatchBothThreatsState> {
  final IThreatRepo _threatRepo;
  WatchBothThreatsCubit(this._threatRepo)
    : super(WatchBothThreatsState.loading());

  Future<void> watch() async {
    emit(WatchBothThreatsState.loading());
    try {
      _threatRepo.watchAll().listen((threats) {
        threats.fold(
          (failure) => emit(WatchBothThreatsState.failed(failure.message)),
          (threatList) {
            final ongoing = threatList.where((t) => t.endedAt == 0).toList();
            final previous = threatList.where((t) => t.endedAt != 0).toList();
            emit(WatchBothThreatsState.watching(ongoing, previous));
          },
        );
      });
    } catch (e) {
      emit(WatchBothThreatsState.failed(e.toString()));
    }
  }
}
