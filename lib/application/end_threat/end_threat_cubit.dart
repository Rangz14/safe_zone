import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:safe_zone/domain/threat/i_threat_repo.dart';
import 'package:safe_zone/domain/threat/threat.dart';

part 'end_threat_state.dart';
part 'end_threat_cubit.freezed.dart';

@injectable
class EndThreatCubit extends Cubit<EndThreatState> {
  final IThreatRepo _threatRepo;
  EndThreatCubit(this._threatRepo) : super(EndThreatState.initial());

  Future<void> endThreat(SafeZoneThreat threat) async {
    emit(EndThreatState.loading());
    final result = await _threatRepo.end(threat);
    result.fold(
      (failure) => emit(EndThreatState.failed(failure.message)),
      (_) => emit(EndThreatState.succeed()),
    );
  }
}
