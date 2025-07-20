import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:safe_zone/domain/organization/bank_details/bank_details.dart';
import 'package:safe_zone/domain/organization/i_organization_repo.dart';

part 'watch_org_bank_details_state.dart';
part 'watch_org_bank_details_cubit.freezed.dart';

@injectable
class WatchOrgBankDetailsCubit extends Cubit<WatchOrgBankDetailsState> {
  final IOrganizationRepo _organizationRepo;
  WatchOrgBankDetailsCubit(this._organizationRepo)
    : super(WatchOrgBankDetailsState.loading());

  Future<void> watchByOrgId(String orgId) async {
    emit(WatchOrgBankDetailsState.loading());
    _organizationRepo
        .watchBankDetails(orgId)
        .listen(
          (either) => either.fold(
            (failure) => emit(WatchOrgBankDetailsState.failed(failure.message)),
            (bankDetails) =>
                emit(WatchOrgBankDetailsState.watching(bankDetails)),
          ),
        );
  }
}
