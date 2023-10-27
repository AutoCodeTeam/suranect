import 'package:get_it/get_it.dart';
import 'package:suranect/features/add_laporan/presentation/controller/camera_bloc.dart';
import 'package:suranect/core/utils/camera_utils.dart';
import 'package:suranect/features/add_laporan/presentation/controller/lapor_cubit.dart';
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
import 'package:suranect/features/home/presentation/controller/home_bloc.dart';
import 'package:suranect/features/introduction/data/data_sources/intro_local_data_source.dart';
import 'package:suranect/features/introduction/data/data_sources/intro_local_data_source_impl.dart';
import 'package:suranect/features/introduction/data/repositories/intro_repository_impl.dart';
import 'package:suranect/features/introduction/domain/repositories/intro_repository.dart';
import 'package:suranect/features/introduction/domain/use_cases/done_intro_use_case.dart';
import 'package:suranect/features/introduction/domain/use_cases/is_intro_in_use_case.dart';
import 'package:suranect/features/introduction/presentation/controller/introduction_bloc.dart';
import 'package:suranect/features/main_tab/presentation/controller/main_tab_bloc.dart';
import 'package:suranect/features/pajak_kendaraan/data/remote/data_sources/pajak_kendaraan_remote_data_source.dart';
import 'package:suranect/features/pajak_kendaraan/data/remote/data_sources/pajak_kendaraan_remote_data_source_impl.dart';
import 'package:suranect/features/pajak_kendaraan/data/repositories/pajak_kendaraan_repository_impl.dart';
import 'package:suranect/features/pajak_kendaraan/domain/repositories/pajak_kendaraan_repository.dart';
import 'package:suranect/features/pajak_kendaraan/domain/use_cases/get_pajak_kendaraan_use_case.dart';
import 'package:suranect/features/pajak_kendaraan/presentation/controller/pajak_kendaraan_bloc.dart';
import 'package:suranect/features/pbb/data/remote/data_sources/pajak_pbb_remote_data_source.dart';
import 'package:suranect/features/pbb/data/remote/data_sources/pajak_pbb_remote_data_source.dart';
import 'package:suranect/features/pbb/data/remote/data_sources/pajak_pbb_remote_data_source_impl.dart';
import 'package:suranect/features/pbb/data/repositories/pajak_pbb_repository_impl.dart';
import 'package:suranect/features/pbb/domain/repositories/pajak_pbb_repository.dart';
import 'package:suranect/features/pbb/domain/repositories/pajak_pbb_repository.dart';
import 'package:suranect/features/pbb/domain/use_cases/get_pajak_pbb_use_case.dart';
import 'package:suranect/features/pbb/presentation/controller/pajak_pbb_bloc.dart';
import 'package:suranect/features/peta/presentation/controller/current_location_bloc.dart';

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
  injector.registerLazySingleton<PajakKendaraanRemoteDataSource>(
      () => PajakKendaraanRemoteDataSourceImpl());
  injector.registerLazySingleton<PajakPBBRemoteDataSource>(
      () => PajakPBBRemoteDataSourceImpl());

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
  injector.registerLazySingleton<PajakKendaraanRepository>(
    () => PajakKendaraanRepositoryImpl(
      pajakKendaraanRemoteDataSource: injector(),
    ),
  );
  injector.registerLazySingleton<PajakPBBRepository>(
    () => PajakPBBRepositoryImpl(
      pajakPBBRemoteDataSource: injector(),
    ),
  );

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
  injector.registerLazySingleton(
      () => GetPajakKendaraanUseCase(pajakKendaraanRepository: injector()));
  injector.registerLazySingleton(
      () => GetPajakPbbUseCase(pajakPBBRepository: injector()));

  /// Utility ///
  injector.registerLazySingleton<CameraUtils>(() => CameraUtils());

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
  injector.registerFactory(
    () => HomeBloc(),
  );
  injector.registerFactory(
    () => CameraBloc(
      cameraUtils: injector(),
    ),
  );
  injector.registerFactory(
    () => CurrentLocationBloc(),
  );
  injector.registerFactory(
    () => PajakKendaraanBloc(
      getPajakKendaraanUseCase: injector(),
    ),
  );
  injector.registerFactory(
    () => PajakPbbBloc(
      getPajakPbbUseCase: injector(),
    ),
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
  injector.registerFactory(
    () => LaporCubit(),
  );

  await injector<IntroLocalDataSource>().initDb();
  await injector<AuthLocalDataSource>().initDb();
}
