import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:safe_zone/core/extensions/dartz_x.dart';
import 'package:safe_zone/domain/service/i_donation_service_repo.dart';
import 'package:safe_zone/domain/service/service.dart';

part 'new_donation_service_state.dart';
part 'new_donation_service_cubit.freezed.dart';

@injectable
class NewDonationServiceCubit extends Cubit<NewDonationServiceState> {
  final IDonationServiceRepo _donationServiceRepo;
  NewDonationServiceCubit(this._donationServiceRepo)
    : super(NewDonationServiceState.initial());

  Future<void> createDonationService(DonationService service) async {
    emit(const NewDonationServiceState.loading());
    final failureOrSuccess = await _donationServiceRepo.createService(service);
    if (failureOrSuccess.isLeft()) {
      emit(NewDonationServiceState.failed(failureOrSuccess.getLeft().message));
      return;
    }
    emit(const NewDonationServiceState.succeed());
  }
}
