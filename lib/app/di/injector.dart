import 'package:get_it/get_it.dart';
import 'package:suranect/features/auth/data/local/data_sources/auth_local_data_source.dart';
import 'package:suranect/features/auth/data/local/data_sources/auth_local_data_source_impl.dart';
import 'package:suranect/features/auth/data/remote/data_sources/login/login_remote_data_source.dart';
import 'package:suranect/features/auth/data/remote/data_sources/login/login_remote_data_source_impl.dart';
import 'package:suranect/features/auth/data/remote/data_sources/profile/profile_remote_data_source.dart';
import 'package:suranect/features/auth/data/remote/data_sources/profile/profile_remote_data_source_impl.dart';
import 'package:suranect/features/auth/data/remote/data_sources/register/register_remote_data_source.dart';
import 'package:suranect/features/auth/data/remote/data_sources/register/register_remote_data_source_impl.dart';
import 'package:suranect/features/auth/data/remote/data_sources/verify_otp/verify_otp_remote_data_source.dart';
import 'package:suranect/features/auth/data/remote/data_sources/verify_otp/verify_otp_remote_data_source_impl.dart';
import 'package:suranect/features/auth/data/repositories/user_repository_impl.dart';
import 'package:suranect/features/auth/domain/repositories/user_repository.dart';
import 'package:suranect/features/auth/domain/use_cases/login/login_use_case.dart';
import 'package:suranect/features/auth/domain/use_cases/profile/get_profile_use_case.dart';
import 'package:suranect/features/auth/domain/use_cases/register/register_use_case.dart';
import 'package:suranect/features/auth/domain/use_cases/verify_otp/get_otp_use_case.dart';
import 'package:suranect/features/auth/domain/use_cases/verify_otp/verify_otp_use_case.dart';
import 'package:suranect/features/auth/presentation/controller/login/login_cubit.dart';
import 'package:suranect/features/auth/presentation/controller/profile/profile_bloc.dart';
import 'package:suranect/features/auth/presentation/controller/register/register_cubit.dart';
import 'package:suranect/features/auth/presentation/controller/verify_otp/verify_otp_cubit.dart';
import 'package:suranect/features/introduction/data/data_sources/intro_local_data_source.dart';
import 'package:suranect/features/introduction/data/data_sources/intro_local_data_source_impl.dart';
import 'package:suranect/features/introduction/data/repositories/intro_repository_impl.dart';
import 'package:suranect/features/introduction/domain/repositories/intro_repository.dart';
import 'package:suranect/features/introduction/domain/use_cases/done_intro_use_case.dart';
import 'package:suranect/features/introduction/domain/use_cases/is_intro_in_use_case.dart';
import 'package:suranect/features/introduction/presentation/controller/introduction_bloc.dart';
import 'package:suranect/features/main_tab/presentation/controller/main_tab_bloc.dart';

final injector = GetIt.instance;

Future<void> initDependencies() async {
  /// Data Source ///
  injector.registerLazySingleton<IntroLocalDataSource>(
      () => IntroLocalDataSourceImpl());
  injector.registerLazySingleton<AuthLocalDataSource>(
      () => AuthLocalDataSourceImpl());

  /// Remote Source ///
  injector.registerLazySingleton<RegistrationRemoteDataSource>(
      () => RegistrationRemoteDataSourceImpl());
  injector.registerLazySingleton<LoginRemoteDataSource>(
      () => LoginRemoteDataSourceImpl());
  injector.registerLazySingleton<VerifyOtpRemoteDataSource>(
      () => VerifyOtpRemoteDataSourceImpl(authLocalDataSource: injector()));
  injector.registerLazySingleton<ProfileRemoteDataSource>(
      () => ProfileRemoteDataSourceImpl(authLocalDataSource: injector()));

  /// Repository ///
  injector.registerLazySingleton<IntroRepository>(
      () => IntroRepositoryImpl(introLocalDataSoure: injector()));
  injector.registerLazySingleton<UserRepository>(() => UserRepositoryImpl(
        registrationRemoteDataSource: injector(),
        loginRemoteDataSource: injector(),
        authLocalDataSource: injector(),
        verifyOtpRemoteDataSource: injector(),
        profileRemoteDataSource: injector(),
      ));

  /// UseCase ///
  injector.registerLazySingleton(
      () => DoneIntroUseCase(introRepository: injector()));
  injector.registerLazySingleton(
      () => IsIntroInUseCase(introRepository: injector()));
  injector
      .registerLazySingleton(() => RegisterUseCase(userRepository: injector()));
  injector
      .registerLazySingleton(() => LoginUseCase(userRepository: injector()));
  injector
      .registerLazySingleton(() => VerifyUseCase(userRepository: injector()));
  injector
      .registerLazySingleton(() => GetOtpUseCase(userRepository: injector()));
  injector.registerLazySingleton(
      () => GetProfileUseCase(userRepository: injector()));

  /// BloC ///
  injector.registerFactory(
    () => IntroductionBloc(
      doneIntroUseCase: injector(),
      isIntroInUseCase: injector(),
    ),
  );
  injector.registerFactory(
    () => ProfileBloc(
      authLocalDataSource: injector(),
      getProfileUseCase: injector(),
    ),
  );
  injector.registerFactory(
    () => MainTabBloc(),
  );

  /// Cubit ///
  injector.registerFactory(
    () => RegisterCubit(
      registerUseCase: injector(),
    ),
  );
  injector.registerFactory(
    () => LoginCubit(
      loginUseCase: injector(),
    ),
  );
  injector.registerFactory(
    () => VerifyOtpCubit(
      verifyOtpUseCase: injector(),
      getOtpUseCase: injector(),
    ),
  );

  await injector<IntroLocalDataSource>().initDb();
  await injector<AuthLocalDataSource>().initDb();
}
