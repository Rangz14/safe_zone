import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:safe_zone/domain/organization/i_organization_repo.dart';
import 'package:safe_zone/domain/organization/organization.dart';

part 'watch_orgs_state.dart';
part 'watch_orgs_cubit.freezed.dart';

@injectable
class WatchOrgsCubit extends Cubit<WatchOrgsState> {
  final IOrganizationRepo _orgRepo;
  WatchOrgsCubit(this._orgRepo) : super(WatchOrgsState.loading());

  Future<void> watchAll() async {
    emit(const WatchOrgsState.loading());
    _orgRepo.watchAll().listen(
      (either) => either.fold(
        (failure) => emit(WatchOrgsState.failed(failure.message)),
        (orgs) => emit(WatchOrgsState.watching(orgs)),
      ),
    );
  }
}
