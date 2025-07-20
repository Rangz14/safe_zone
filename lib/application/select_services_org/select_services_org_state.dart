part of 'select_services_org_cubit.dart';

@freezed
class SelectServicesOrgState with _$SelectServicesOrgState {
  const factory SelectServicesOrgState.initial() = _Initial;
  const factory SelectServicesOrgState.loading() = _Loading;
  const factory SelectServicesOrgState.loaded(
    List<DonationService> services,
    List<String> selected,
  ) = _Loaded;
  const factory SelectServicesOrgState.failed(String message) = _Failed;
}
