import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:safe_zone/domain/donation_request/donation_request.dart';
import 'package:safe_zone/domain/donation_request/i_donation_request_repo.dart';

part 'watch_user_requests_state.dart';
part 'watch_user_requests_cubit.freezed.dart';

@injectable
class WatchUserRequestsCubit extends Cubit<WatchUserRequestsState> {
  final IDonationRequestRepo _donationRequestRepo;
  WatchUserRequestsCubit(this._donationRequestRepo)
    : super(WatchUserRequestsState.loading());

  Future<void> watch() async {
    emit(WatchUserRequestsState.loading());
    _donationRequestRepo.watchByCurrentUser().listen((requests) {
      requests.fold(
        (failure) => emit(WatchUserRequestsState.failed(failure.message)),
        (requestList) {
          emit(WatchUserRequestsState.watching(requestList));
        },
      );
    });
  }
}
