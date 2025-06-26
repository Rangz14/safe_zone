import 'package:freezed_annotation/freezed_annotation.dart';
part 'bank_details.freezed.dart';
part 'bank_details.g.dart';

@freezed
abstract class OrganizationBankDetails with _$OrganizationBankDetails {
  const factory OrganizationBankDetails({
    required String organizationId,
    required String bankName,
    required String bankBranch,
    required String accountName,
    required String accountNumber,
    required int createdAt,
  }) = _OrganizationBankDetails;
  factory OrganizationBankDetails.fromJson(Map<String, Object?> json) =>
      _$OrganizationBankDetailsFromJson(json);

  factory OrganizationBankDetails.empty() => OrganizationBankDetails(
    organizationId: "",
    bankName: "",
    bankBranch: "",
    accountName: "",
    accountNumber: "",
    createdAt: DateTime.now().millisecondsSinceEpoch,
  );
}
