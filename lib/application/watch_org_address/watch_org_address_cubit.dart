import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:safe_zone/domain/organization/address/address.dart';
import 'package:safe_zone/domain/organization/i_organization_repo.dart';

part 'watch_org_address_state.dart';
part 'watch_org_address_cubit.freezed.dart';

@injectable
class WatchOrgAddressCubit extends Cubit<WatchOrgAddressState> {
  final IOrganizationRepo _organizationRepo;
  WatchOrgAddressCubit(this._organizationRepo)
    : super(WatchOrgAddressState.loading());

  Future<void> watchByOrgId(String orgId) async {
    emit(WatchOrgAddressState.loading());
    _organizationRepo
        .watchAddress(orgId)
        .listen(
          (either) => either.fold(
            (failure) => emit(WatchOrgAddressState.failed(failure.message)),
            (address) => emit(WatchOrgAddressState.watching(address)),
          ),
        );
  }
}
