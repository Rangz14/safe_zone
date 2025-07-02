import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:safe_zone/core/constants.dart';
import 'package:safe_zone/domain/donation/i_donation_repo.dart';
import 'package:safe_zone/domain/organization/i_organization_repo.dart';
import 'package:safe_zone/domain/service/i_donation_service_repo.dart';
import 'package:safe_zone/domain/threat/i_threat_repo.dart';
import 'package:safe_zone/domain/user/i_user_repo.dart';

part 'watch_admin_stats_state.dart';
part 'watch_admin_stats_cubit.freezed.dart';

@injectable
class WatchAdminStatsCubit extends Cubit<WatchAdminStatsState> {
  final IOrganizationRepo _organizationRepo;
  final IDonationRepo _donationRepo;
  final IUserRepo _userRepo;
  final IDonationServiceRepo _donationServiceRepo;
  final IThreatRepo _threatRepo;
  WatchAdminStatsCubit(
    this._organizationRepo,
    this._donationRepo,
    this._userRepo,
    this._donationServiceRepo,
    this._threatRepo,
  ) : super(WatchAdminStatsState.loading());

  Future<void> watchStat(AdminStatsType type) async {
    if (type == AdminStatsType.organizations) {
      await _watchOrganizations();
      return;
    }
    if (type == AdminStatsType.donations) {
      await _watchDonations();
      return;
    }
    if (type == AdminStatsType.users) {
      await _watchUsers();
      return;
    }
    if (type == AdminStatsType.services) {
      await _watchServices();
      return;
    }

    if (type == AdminStatsType.threatCategories) {
      await _watchThreatCategories();
      return;
    }
  }

  Future<void> _watchOrganizations() async {
    emit(const WatchAdminStatsState.loading());
    final failureOrTotal = _organizationRepo.watchTotalOrgs();
    await for (final either in failureOrTotal) {
      either.fold(
        (failure) => emit(WatchAdminStatsState.failed(failure.message)),
        (total) => emit(WatchAdminStatsState.watching(total, 'Organizations')),
      );
    }
  }

  Future<void> _watchDonations() async {
    emit(const WatchAdminStatsState.loading());
    final failureOrTotal = _donationRepo.watchTotalDonations();
    await for (final either in failureOrTotal) {
      either.fold(
        (failure) => emit(WatchAdminStatsState.failed(failure.message)),
        (total) => emit(WatchAdminStatsState.watching(total, 'Donations')),
      );
    }
  }

  Future<void> _watchUsers() async {
    emit(const WatchAdminStatsState.loading());
    final failureOrTotal = _userRepo.watchTotalUsers();
    await for (final either in failureOrTotal) {
      either.fold(
        (failure) => emit(WatchAdminStatsState.failed(failure.message)),
        (total) => emit(WatchAdminStatsState.watching(total, 'Users')),
      );
    }
  }

  Future<void> _watchServices() async {
    emit(const WatchAdminStatsState.loading());
    final failureOrTotal = _donationServiceRepo.watchTotalServices();
    await for (final either in failureOrTotal) {
      either.fold(
        (failure) => emit(WatchAdminStatsState.failed(failure.message)),
        (total) => emit(WatchAdminStatsState.watching(total, 'Services')),
      );
    }
  }

  Future<void> _watchThreatCategories() async {
    emit(const WatchAdminStatsState.loading());
    final failureOrTotal = _threatRepo.watchTotalCategories();
    await for (final either in failureOrTotal) {
      either.fold(
        (failure) => emit(WatchAdminStatsState.failed(failure.message)),
        (total) =>
            emit(WatchAdminStatsState.watching(total, 'Threat Categories')),
      );
    }
  }
}
