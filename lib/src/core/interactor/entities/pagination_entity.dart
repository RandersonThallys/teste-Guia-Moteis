class PaginationEntity<T> {
  final int page;
  final int quantityPerPage;
  final int totalSuites;
  final int totalMotels;
  final int radius;
  final double maxPages;
  final List<T> content;

  PaginationEntity({
    required this.page,
    required this.quantityPerPage,
    required this.totalSuites,
    required this.totalMotels,
    required this.radius,
    required this.maxPages,
    required this.content,
  });
}
