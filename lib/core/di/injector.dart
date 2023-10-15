import 'package:get_it/get_it.dart';
import 'package:suranect/features/auth/data/remote/data_sources/register_remote_data_source.dart';
import 'package:suranect/features/auth/data/remote/data_sources/register_remote_data_source_impl.dart';
import 'package:suranect/features/auth/data/repositories/user_repository_impl.dart';
import 'package:suranect/features/auth/domain/repositories/user_repository.dart';
import 'package:suranect/features/auth/domain/repositories/user_repository.dart';
import 'package:suranect/features/auth/domain/use_cases/register_use_case.dart';
import 'package:suranect/features/auth/presentation/controller/register_cubit.dart';
import 'package:suranect/features/introduction/data/data_sources/intro_local_data_source.dart';
import 'package:suranect/features/introduction/data/data_sources/intro_local_data_source_impl.dart';
import 'package:suranect/features/introduction/data/repositories/intro_repository_impl.dart';
import 'package:suranect/features/introduction/domain/repositories/intro_repository.dart';
import 'package:suranect/features/introduction/domain/use_cases/done_intro_use_case.dart';
import 'package:suranect/features/introduction/domain/use_cases/is_intro_in_use_case.dart';
import 'package:suranect/features/introduction/presentation/controller/introduction_bloc.dart';

final injector = GetIt.instance;

Future<void> initDependencies() async {
  /// Remote Source ///
  injector.registerLazySingleton<RegistrationRemoteDataSource>(
      () => RegistrationRemoteDataSourceImpl());

  /// Data Source ///
  injector.registerLazySingleton<IntroLocalDataSource>(
      () => IntroLocalDataSourceImpl());

  /// Repository ///
  injector.registerLazySingleton<IntroRepository>(
      () => IntroRepositoryImpl(introLocalDataSoure: injector()));
  injector.registerLazySingleton<UserRepository>(
      () => UserRepositoryImpl(registrationRemoteDataSource: injector()));

  /// UseCase ///
  injector.registerLazySingleton(
      () => DoneIntroUseCase(introRepository: injector()));
  injector.registerLazySingleton(
    () => IsIntroInUseCase(
      introRepository: injector(),
    ),
  );
  injector.registerLazySingleton(
    () => RegisterUseCase(
      userRepository: injector(),
    ),
  );

  /// BloC ///
  injector.registerFactory(
    () => IntroductionBloc(
      doneIntroUseCase: injector(),
      isIntroInUseCase: injector(),
    ),
  );

  /// Cubit ///
  injector.registerFactory(
    () => RegisterCubit(
      registerUseCase: injector(),
    ),
  );

  await injector<IntroLocalDataSource>().initDb();
}
