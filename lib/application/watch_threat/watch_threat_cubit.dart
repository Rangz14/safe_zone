import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:safe_zone/domain/threat/i_threat_repo.dart';
import 'package:safe_zone/domain/threat/threat.dart';

part 'watch_threat_state.dart';
part 'watch_threat_cubit.freezed.dart';

@injectable
class WatchThreatCubit extends Cubit<WatchThreatState> {
  final IThreatRepo _threatRepo;
  WatchThreatCubit(this._threatRepo) : super(WatchThreatState.loading());

  Future<void> watch(String id) async {
    emit(WatchThreatState.loading());
    _threatRepo.watchThreat(id).listen((event) {
      event.fold(
        (failure) => emit(WatchThreatState.failed(failure.message)),
        (threat) => emit(WatchThreatState.watching(threat)),
      );
    });
  }
}
