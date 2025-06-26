import 'package:dartz/dartz.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:safe_zone/core/extensions/dartz_x.dart';
import 'package:safe_zone/domain/town/i_town_repo.dart';
import 'package:safe_zone/domain/town/town.dart';
import 'package:safe_zone/injection.dart';

part 'select_town_state.dart';
part 'select_town_cubit.freezed.dart';

@injectable
class SelectTownCubit extends Cubit<SelectTownState> {
  final ITownRepo _townRepo;
  SelectTownCubit(this._townRepo) : super(SelectTownState.initial());

  Option<String> _province = none();
  Option<String> _district = none();
  Option<String> _city = none();

  void selectProvince(String province) {
    final districts = _townRepo.getDistrictsByProvince(province);
    _province = some(province);
    emit(
      state.copyWith(districts: some(districts), cities: none(), towns: none()),
    );
  }

  void selectDistrict(String district) {
    if (_province.isNone()) return;
    _district = some(district);
    final province = _province.getOrCrash();
    final cities = _townRepo.getCitiesByProvinceAndDistrict(province, district);
    emit(state.copyWith(cities: some(cities), towns: none()));
  }

  void selectCity(String city) {
    if (_province.isNone() || _district.isNone()) return;
    _city = some(city);
    final province = _province.getOrCrash();
    final district = _district.getOrCrash();
    final towns = _townRepo.getTownsByProvinceDistrictAndCity(
      province,
      district,
      city,
    );
    emit(state.copyWith(towns: some(towns)));
  }

  void selectTown(String town) {
    if (_province.isNone() || _district.isNone() || _city.isNone()) return;
    final province = _province.getOrCrash();
    final district = _district.getOrCrash();
    final city = _city.getOrCrash();
    final selected = _townRepo.getTown(town, city, district, province);
    emit(state.copyWith(selectedTown: some(selected)));
  }
}
