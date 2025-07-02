import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:safe_zone/domain/organization/i_organization_repo.dart';

part 'update_org_service_state.dart';
part 'update_org_service_cubit.freezed.dart';

@injectable
class UpdateOrgServiceCubit extends Cubit<UpdateOrgServiceState> {
  final IOrganizationRepo _organizationRepo;
  UpdateOrgServiceCubit(this._organizationRepo)
    : super(UpdateOrgServiceState.initial());

  Future<void> updateOrgService(String serviceId, bool isSelected) async {
    if (isSelected) {
      await _removeOrgService(serviceId);
      return;
    }
    await _addOrgService(serviceId);
  }

  Future<void> _addOrgService(String serviceId) async {
    emit(const UpdateOrgServiceState.loading());
    final result = await _organizationRepo.addOrgService(serviceId);
    result.fold(
      (failure) => emit(UpdateOrgServiceState.failed(failure.message)),
      (_) => emit(const UpdateOrgServiceState.succeed()),
    );
  }

  Future<void> _removeOrgService(String serviceId) async {
    emit(const UpdateOrgServiceState.loading());
    final result = await _organizationRepo.removeOrgService(serviceId);
    result.fold(
      (failure) => emit(UpdateOrgServiceState.failed(failure.message)),
      (_) => emit(const UpdateOrgServiceState.succeed()),
    );
  }
}
