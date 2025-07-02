import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:safe_zone/domain/organization/bank_details/bank_details.dart';
import 'package:safe_zone/domain/organization/i_organization_repo.dart';

part 'update_bank_details_state.dart';
part 'update_bank_details_cubit.freezed.dart';

@injectable
class UpdateBankDetailsCubit extends Cubit<UpdateBankDetailsState> {
  final IOrganizationRepo _organizationRepo;
  UpdateBankDetailsCubit(this._organizationRepo)
    : super(UpdateBankDetailsState.initial());

  Future<void> updateBankDetails(OrganizationBankDetails bankDetails) async {
    emit(const UpdateBankDetailsState.loading());
    final result = await _organizationRepo.updateBankDetails(bankDetails);
    result.fold(
      (failure) => emit(UpdateBankDetailsState.failed(failure.message)),
      (success) => emit(const UpdateBankDetailsState.succeed()),
    );
  }
}
