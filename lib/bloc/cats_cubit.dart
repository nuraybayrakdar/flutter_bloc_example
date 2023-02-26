import 'package:bloc/bloc.dart';
import 'package:flutter_bloc_example/bloc/cats_state.dart';

class CastCubit extends Cubit<CatsState> {
  CatsCubit() : super(const CatsInitial());

  void getCats() async {
   
   try {
      emit(const CatsLoading());
    await Future.delayed(const Duration(milliseconds: 500));
    final response = await Future.value(["a", "b"]);
    emit(CatsCompleted(response));
   } catch (e) {
     emit(const CatsError("Couldn't fetch response"));
   }

   
  }
}
