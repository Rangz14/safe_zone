import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:safe_zone/domain/organization/i_organization_repo.dart';
import 'package:safe_zone/domain/organization/rating/rating.dart';

part 'watch_org_ratings_state.dart';
part 'watch_org_ratings_cubit.freezed.dart';

@injectable
class WatchOrgRatingsCubit extends Cubit<WatchOrgRatingsState> {
  final IOrganizationRepo _organizationRepo;
  WatchOrgRatingsCubit(this._organizationRepo)
    : super(WatchOrgRatingsState.loading());

  Future<void> watchByOrgId(String orgId) async {
    emit(WatchOrgRatingsState.loading());
    _organizationRepo
        .watchRatings(orgId)
        .listen(
          (either) => either.fold(
            (failure) => emit(WatchOrgRatingsState.failed(failure.message)),
            (ratings) => emit(WatchOrgRatingsState.watching(ratings)),
          ),
        );
  }
}
