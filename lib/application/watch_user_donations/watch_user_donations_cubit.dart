import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:safe_zone/domain/donation/donation.dart';
import 'package:safe_zone/domain/donation/i_donation_repo.dart';

part 'watch_user_donations_state.dart';
part 'watch_user_donations_cubit.freezed.dart';

@injectable
class WatchUserDonationsCubit extends Cubit<WatchUserDonationsState> {
  final IDonationRepo _donationRepo;
  WatchUserDonationsCubit(this._donationRepo)
    : super(WatchUserDonationsState.loading());

  Future<void> watch() async {
    emit(WatchUserDonationsState.loading());
    _donationRepo.watchByCurrentUser().listen((donations) {
      donations.fold(
        (failure) => emit(WatchUserDonationsState.failed(failure.message)),
        (donationList) {
          emit(WatchUserDonationsState.watching(donationList));
        },
      );
    });
  }
}
