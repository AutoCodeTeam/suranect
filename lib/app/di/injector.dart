import 'package:get_it/get_it.dart';
import 'package:suranect/core/utils/log_services.dart';
import 'package:suranect/debug_log_service.dart';
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
import 'package:suranect/features/berita/data/remote/data_sources/berita_remote_data_source.dart';
import 'package:suranect/features/berita/data/remote/data_sources/berita_remote_data_source_impl.dart';
import 'package:suranect/features/berita/data/repositories/berita_repository_impl.dart';
import 'package:suranect/features/berita/domain/repositories/berita_repository.dart';
import 'package:suranect/features/berita/domain/use_cases/get_berita_use_case.dart';
import 'package:suranect/features/berita/presentation/controller/berita_bloc.dart';
import 'package:suranect/features/event/data/remote/data_sources/event_remote_data_source.dart';
import 'package:suranect/features/event/data/remote/data_sources/event_remote_data_source_impl.dart';
import 'package:suranect/features/event/data/repositories/event_repository_impl.dart';
import 'package:suranect/features/event/domain/repositories/event_repository.dart';
import 'package:suranect/features/event/domain/use_cases/get_events_use_case.dart';
import 'package:suranect/features/event/presentation/controller/event_bloc.dart';
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
import 'package:suranect/features/pbb/data/remote/data_sources/pajak_pbb_remote_data_source_impl.dart';
import 'package:suranect/features/pbb/data/repositories/pajak_pbb_repository_impl.dart';
import 'package:suranect/features/pbb/domain/repositories/pajak_pbb_repository.dart';
import 'package:suranect/features/pbb/domain/use_cases/get_pajak_pbb_use_case.dart';
import 'package:suranect/features/pbb/presentation/controller/pajak_pbb_bloc.dart';
import 'package:suranect/features/peta/data/remote/data_sources/peta_remote_data_source.dart';
import 'package:suranect/features/peta/data/remote/data_sources/peta_remote_data_source_impl.dart';
import 'package:suranect/features/peta/data/repositories/peta_repository_impl.dart';
import 'package:suranect/features/peta/domain/repositories/peta_repository.dart';
import 'package:suranect/features/peta/domain/repositories/peta_repository.dart';
import 'package:suranect/features/peta/domain/use_cases/get_peta_use_case.dart';
import 'package:suranect/features/peta/presentation/controller/current_location_bloc.dart';
import 'package:suranect/features/peta/presentation/controller/peta_bloc.dart';
import 'package:suranect/features/wisata/data/remote/data_sources/wisata_remote_data_source.dart';
import 'package:suranect/features/wisata/data/remote/data_sources/wisata_remote_data_source_impl.dart';
import 'package:suranect/features/wisata/data/repositories/wisata_repostiory_impl.dart';
import 'package:suranect/features/wisata/domain/repositories/wisata_repository.dart';
import 'package:suranect/features/wisata/domain/use_cases/get_wisata_use_case.dart';
import 'package:suranect/features/wisata/presentation/controller/wisata_bloc.dart';

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
  injector.registerLazySingleton<BeritaRemoteDataSource>(
      () => BeritaRemoteDataSourceImpl());
  injector.registerLazySingleton<WisataRemoteDataSource>(
      () => WisataRemoteDataSourceImpl());
  injector.registerLazySingleton<EventRemoteDataSource>(
    () => EventRemoteDataSourceImpl(),
  );
  injector.registerLazySingleton<PetaRemoteDataSource>(
    () => PetaRemoteDataSourceImpl(),
  );

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
  injector.registerLazySingleton<BeritaRepository>(
    () => BeritaRepositoryImpl(
      beritaRemoteDataSource: injector(),
    ),
  );
  injector.registerLazySingleton<WisataRepository>(
    () => WisataRepositoryImpl(
      wisataRemoteDataSource: injector(),
    ),
  );
  injector.registerLazySingleton<EventRepository>(
    () => EventRepositoryImpl(
      eventRemoteDataSource: injector(),
    ),
  );
  injector.registerLazySingleton<PetaRepository>(
    () => PetaRepositoryImpl(
      petaRemoteDataSource: injector(),
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
  injector.registerLazySingleton(
      () => GetBeritaUseCase(beritaRepository: injector()));
  injector.registerLazySingleton<GetWisataUseCase>(
    () => GetWisataUseCase(
      wisataRepository: injector(),
    ),
  );
  injector.registerLazySingleton<GetEventsUseCase>(
    () => GetEventsUseCase(
      eventRepository: injector(),
    ),
  );
  injector.registerLazySingleton<GetPetaUseCase>(
    () => GetPetaUseCase(
      petaRepository: injector(),
    ),
  );

  /// Utility ///
  injector.registerLazySingleton<CameraUtils>(() => CameraUtils());
  injector.registerFactory<LogService>(DebugLogService.new);

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
  injector.registerFactory(
    () => BeritaBloc(
      getBeritaUseCase: injector(),
    ),
  );
  injector.registerFactory(
    () => WisataBloc(
      getWisataUseCase: injector(),
    ),
  );
  injector.registerFactory(
    () => EventBloc(
      getEventsUseCase: injector(),
    ),
  );
  injector.registerFactory(
    () => PetaBloc(
      getEventUseCase: injector(),
      getPetaUseCase: injector(),
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
