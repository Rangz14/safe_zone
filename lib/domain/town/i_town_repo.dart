import 'package:safe_zone/domain/town/town.dart';

abstract class ITownRepo {
  List<Town> getAll();
  Town get(String id);
  String getId(String town, String city, String district, String province);
  Town getTown(String town, String city, String district, String province);
  List<String> getProvinces();
  List<String> getDistrictsByProvince(String province);
  List<String> getCitiesByProvinceAndDistrict(String province, String district);
  List<String> getTownsByProvinceDistrictAndCity(
    String province,
    String district,
    String city,
  );
}
