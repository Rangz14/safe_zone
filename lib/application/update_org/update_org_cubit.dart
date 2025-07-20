import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:safe_zone/domain/organization/i_organization_repo.dart';
import 'package:safe_zone/domain/organization/organization.dart';

part 'update_org_state.dart';
part 'update_org_cubit.freezed.dart';

@injectable
class UpdateOrgCubit extends Cubit<UpdateOrgState> {
  final IOrganizationRepo _organizationRepo;
  UpdateOrgCubit(this._organizationRepo) : super(UpdateOrgState.initial());

  Future<void> update(Organization org) async {
    emit(const UpdateOrgState.loading());
    final result = await _organizationRepo.updateCurrent(org);
    result.fold(
      (failure) => emit(UpdateOrgState.failed(failure.message)),
      (_) => emit(const UpdateOrgState.succeed()),
    );
  }
}
