import 'package:teste_seguimentos_moteis/src/core/interactor/entities/pagination_entity.dart';

sealed class MotelListState {}

class InitialMotelListState extends MotelListState {}

class SuccessMotelListState extends MotelListState {
  SuccessMotelListState({required this.motels});

  final PaginationEntity motels;
}

class ErrorMotelListState extends MotelListState {
  final String message;

  ErrorMotelListState({required this.message});
}

class LoadingMotelListState extends MotelListState {}
