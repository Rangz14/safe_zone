import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:safe_zone/domain/threat/i_threat_repo.dart';
import 'package:safe_zone/domain/threat/threat.dart';

part 'watch_threats_state.dart';
part 'watch_threats_cubit.freezed.dart';

@injectable
class WatchThreatsCubit extends Cubit<WatchThreatsState> {
  final IThreatRepo _threatRepo;
  WatchThreatsCubit(this._threatRepo) : super(WatchThreatsState.loading());

  Future<void> watchThreats() async {
    emit(WatchThreatsState.loading());
    _threatRepo.watchAll().listen(
      (failureOrThreats) => failureOrThreats.fold(
        (failure) => emit(WatchThreatsState.failed(failure.message)),
        (threats) => emit(WatchThreatsState.watching(threats)),
      ),
    );
  }
}
