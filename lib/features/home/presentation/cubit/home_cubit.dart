import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_color_changer_app/features/home/domain/repository/color_repository.dart';

import 'package:flutter_color_changer_app/features/home/presentation/cubit/home_state.dart';

class HomeCubit extends Cubit<HomeState> {
  HomeCubit({required this.repository}) : super(const HomeInitial());

  final ColorRepository repository;

  void changeColor() {
    final entity = repository.generateColor();

    emit(HomeColorChanged(backgroundColor: entity.color));
  }
}
