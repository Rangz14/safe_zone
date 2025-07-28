import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:safe_zone/domain/organization/i_organization_repo.dart';
import 'package:safe_zone/domain/organization/organization.dart';

part 'watch_org_state.dart';
part 'watch_org_cubit.freezed.dart';

@injectable
class WatchOrgCubit extends Cubit<WatchOrgState> {
  final IOrganizationRepo _organizationRepo;

  WatchOrgCubit(this._organizationRepo) : super(WatchOrgState.loading());

  Future<void> watch(String id) async {
    emit(WatchOrgState.loading());
    _organizationRepo.watchOrg(id).listen((event) {
      event.fold(
        (failure) => emit(WatchOrgState.failed(failure.message)),
        (organization) => emit(WatchOrgState.watching(organization)),
      );
    });
  }
}
