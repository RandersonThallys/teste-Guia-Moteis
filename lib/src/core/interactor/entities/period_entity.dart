class PeriodEntity {
  final String formattedTime;
  final String time;
  final double cost;
  final double totalCost;
  final bool hasCourtesy;
  final double discount;

  PeriodEntity({
    required this.formattedTime,
    required this.time,
    required this.cost,
    required this.totalCost,
    required this.hasCourtesy,
    this.discount = 0,
  });
}
