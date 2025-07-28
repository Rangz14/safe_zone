import 'package:safe_zone/domain/organization/organization.dart';

final List<Organization> mockOrganizations = [
  Organization(
    id: 'org_otara_foundation',
    name: 'Otara Foundation',
    phone: '+94112887887',
    email: 'contact@otarafoundation.com',
    website: 'https://otarafoundation.com',
    logo: 'assets/images/org/otara_foundation/logo.jpg',
    description:
        'Committed to environmental and wildlife conservation, and providing aid during natural crises.',
    coverImage: 'assets/images/org/otara_foundation/cover.jpg',
    createdAt:
        DateTime.now()
            .subtract(const Duration(days: 200))
            .millisecondsSinceEpoch,
  ),
];
