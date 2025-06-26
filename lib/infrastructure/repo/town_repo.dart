import 'package:injectable/injectable.dart';
import 'package:safe_zone/domain/town/i_town_repo.dart';
import 'package:safe_zone/domain/town/town.dart';
import 'package:safe_zone/infrastructure/data/towns.dart';

@LazySingleton(as: ITownRepo)
class TownRepo implements ITownRepo {
  final TownData _data;

  TownRepo(this._data);

  @override
  Town get(String id) => _data.towns.firstWhere(
    (town) => town.id == id,
    orElse: () => throw Exception('Town not found'),
  );

  @override
  List<Town> getAll() => _data.towns;

  @override
  List<String> getCitiesByProvinceAndDistrict(
    String province,
    String district,
  ) =>
      _data.towns
          .where(
            (town) => town.province == province && town.district == district,
          )
          .map((town) => town.city)
          .toSet()
          .toList();

  @override
  List<String> getDistrictsByProvince(String province) =>
      _data.towns
          .where((town) => town.province == province)
          .map((town) => town.district)
          .toSet()
          .toList();

  @override
  String getId(String town, String city, String district, String province) =>
      _data.towns
          .firstWhere(
            (t) =>
                t.town == town &&
                t.city == city &&
                t.district == district &&
                t.province == province,
            orElse: () => throw Exception('Town not found'),
          )
          .id;

  @override
  List<String> getProvinces() =>
      _data.towns.map((town) => town.province).toSet().toList();

  @override
  List<String> getTownsByProvinceDistrictAndCity(
    String province,
    String district,
    String city,
  ) =>
      _data.towns
          .where(
            (town) =>
                town.province == province &&
                town.city == city &&
                town.district == district,
          )
          .map((town) => town.town)
          .toSet()
          .toList();

  @override
  Town getTown(String town, String city, String district, String province) =>
      _data.towns.firstWhere(
        (t) =>
            t.town == town &&
            t.city == city &&
            t.district == district &&
            t.province == province,
        orElse: () => throw Exception('Town not found'),
      );
}
