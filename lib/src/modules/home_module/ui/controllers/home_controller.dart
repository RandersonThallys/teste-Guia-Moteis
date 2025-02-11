import 'package:bloc/bloc.dart';
import 'package:teste_seguimentos_moteis/src/core/interactor/repositories/motel_repository.dart';
import 'package:teste_seguimentos_moteis/src/core/interactor/states/motel_list_state.dart';

class HomeController extends Cubit<MotelListState> {
  HomeController(this.motelRepository) : super(InitialMotelListState());

  final MotelRepository motelRepository;

  void initialize() {
    getAllMotels();
  }

  Future<void> getAllMotels() async {
    emit(LoadingMotelListState());
    final response = await motelRepository.getAllMotels();
    await Future.delayed(Duration(seconds: 5));
    response.fold(
      (l) => emit(ErrorMotelListState(message: l.message)),
      (r) => emit(SuccessMotelListState(motels: r)),
    );
  }
}
