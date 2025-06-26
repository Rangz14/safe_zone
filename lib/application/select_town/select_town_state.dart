part of 'select_town_cubit.dart';

@freezed
abstract class SelectTownState with _$SelectTownState {
  const factory SelectTownState({
    required Option<List<String>> provinces,
    required Option<List<String>> districts,
    required Option<List<String>> cities,
    required Option<List<String>> towns,
    required Option<Town> selectedTown,
  }) = _SelectTownState;

  factory SelectTownState.initial() => SelectTownState(
    provinces: some(getIt<ITownRepo>().getProvinces()),
    districts: none(),
    cities: none(),
    towns: none(),
    selectedTown: none(),
  );
}
