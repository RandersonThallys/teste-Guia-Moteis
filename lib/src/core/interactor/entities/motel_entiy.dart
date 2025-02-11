import 'package:teste_seguimentos_moteis/src/core/interactor/entities/suite_entity.dart';

class MotelEntity {
  final String tradeName;
  final String logoUrl;
  final String neighborhood;
  final double distance;
  final int quantityFavorites;
  final double average;
  final int amountReviews;
  final List<SuiteEntity> suites;

  MotelEntity({
    required this.tradeName,
    required this.logoUrl,
    required this.neighborhood,
    required this.distance,
    required this.quantityFavorites,
    required this.amountReviews,
    required this.average,
    required this.suites,
  });
}
