import 'package:get_it/get_it.dart';

import 'features/home/data/repository/color_repository_impl.dart';
import 'features/home/domain/repository/color_repository.dart';
import 'features/home/presentation/cubit/home_cubit.dart';

final sl = GetIt.instance;

Future<void> init() async {
  _initRepositories();
  _initBloc();
}

void _initRepositories() {
  sl.registerLazySingleton<ColorRepository>(
    ColorRepositoryImpl.new,
  );
}

void _initBloc() {
  sl.registerFactory(() => HomeCubit(repository: sl()));
}
