import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:safe_zone/domain/organization/address/address.dart';
import 'package:safe_zone/domain/organization/i_organization_repo.dart';

part 'update_org_address_state.dart';
part 'update_org_address_cubit.freezed.dart';

@injectable
class UpdateOrgAddressCubit extends Cubit<UpdateOrgAddressState> {
  final IOrganizationRepo _organizationRepo;
  UpdateOrgAddressCubit(this._organizationRepo)
    : super(UpdateOrgAddressState.initial());

  Future<void> update(OrganizationAddress address) async {
    emit(const UpdateOrgAddressState.loading());
    final result = await _organizationRepo.updateAddress(address);
    result.fold(
      (failure) => emit(UpdateOrgAddressState.failed(failure.message)),
      (_) => emit(const UpdateOrgAddressState.succeed()),
    );
  }
}
