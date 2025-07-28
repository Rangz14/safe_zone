import 'package:safe_zone/domain/service/service.dart';

final List<DonationService> mockDonationServices = [
  DonationService(
    id: 'ds_food',
    title: 'Emergency Food Pack',
    description:
        'A pack containing essential dry food items like rice, dhal, and sugar.',
    icon: 'assets/images/services/food.jpg',
    approximateUnitPrice: 3000,
    createdAt:
        DateTime.now()
            .subtract(const Duration(days: 250))
            .millisecondsSinceEpoch,
  ),
  DonationService(
    id: 'ds_medicine',
    title: 'First-Aid Kit',
    description:
        'A basic medical kit containing bandages, antiseptics, and pain relievers.',
    icon: 'assets/images/services/medicine.jpg',
    approximateUnitPrice: 1500,
    createdAt:
        DateTime.now()
            .subtract(const Duration(days: 250))
            .millisecondsSinceEpoch,
  ),
  DonationService(
    id: 'ds_clothes',
    title: 'Clothing & Linen',
    description: 'Essential clothing and blankets for displaced individuals.',
    icon: 'assets/images/services/clothes.jpg',
    approximateUnitPrice: 4000,
    createdAt:
        DateTime.now()
            .subtract(const Duration(days: 250))
            .millisecondsSinceEpoch,
  ),
  DonationService(
    id: 'ds_fund',
    title: 'Monetary Fund',
    description:
        'Direct financial support for rebuilding and recovery efforts.',
    icon: 'assets/images/services/fund.jpg',
    approximateUnitPrice: 1000, // Represents a single unit of donation
    createdAt:
        DateTime.now()
            .subtract(const Duration(days: 250))
            .millisecondsSinceEpoch,
  ),
];
