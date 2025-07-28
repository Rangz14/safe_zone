import 'package:safe_zone/domain/organization/address/address.dart';
import 'package:safe_zone/domain/organization/bank_details/bank_details.dart';

final List<OrganizationAddress> mockOrganizationAddresses = [
  OrganizationAddress(
    organizationId: 'org_otara_foundation',
    townId: 'western-colombo-colombo-dehiwala', // Assuming town_03 is Colombo
    address: '123, Jawatte Road, Colombo 05',
    createdAt:
        DateTime.now()
            .subtract(const Duration(days: 200))
            .millisecondsSinceEpoch,
  ),
];

final List<OrganizationBankDetails> mockOrganizationBankDetailsList = [
  OrganizationBankDetails(
    organizationId: 'org_otara_foundation',
    bankName: 'Sampath Bank PLC',
    bankBranch: 'Head Office Branch',
    accountName: 'Otara Foundation',
    accountNumber: '100200300400',
    createdAt:
        DateTime.now()
            .subtract(const Duration(days: 200))
            .millisecondsSinceEpoch,
  ),
];
