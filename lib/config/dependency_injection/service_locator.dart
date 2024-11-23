import 'package:get_it/get_it.dart';
import 'package:homex/features/auth/domain/repository/auth_repo.dart';

import '../../core/api/api.dart';
import '../../core/constants/storage/local_storage.dart';
import '../../features/auth/data/remote/auth_service.dart';
import '../../features/auth/domain/usecase/auth_usecase.dart';

class Di {
  static late GetIt getIt;

  static Future<void> setUpLocator() async {
    getIt = GetIt.instance;
    initialize();
  }

  static void initialize() {
    initializeServices();
    initializeBloc();
    initializeLocalDataSources();
    initializeRepositories();
    initializePackages();
    initUsecase();
  }

  static void initializeLocalDataSources() {
    getIt.registerLazySingleton<LocalStorage>(() => LocalStorageImpl());
    //  getIt.registerLazySingleton<PaginationManager>(() => PaginationManager());
  }

  static void initializeServices() {
    getIt.registerLazySingleton<AuthService>(() => AuthServiceImpl());
  }

  static void initializeRepositories() {
    getIt.registerLazySingleton<AuthRepo>(() => AuthRepoImpl());
  }

  static void initializeBloc() {}

  static void initializePackages() {
    getIt.registerLazySingleton<ApiClient>(
      () => DioClient(),
    );
  }

  static void initUsecase() {
    getIt.registerLazySingleton<AuthUsecase>(() => AuthUsecase());
  }
}
