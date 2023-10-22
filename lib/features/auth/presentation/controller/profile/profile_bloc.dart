import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:suranect/app/routes/app_router.dart';
import 'package:suranect/app/routes/route_utils.dart';
import 'package:suranect/core/error/exceptions.dart';
import 'package:suranect/features/auth/data/local/data_sources/auth_local_data_source.dart';
import 'package:suranect/features/auth/domain/entities/user_entity.dart';
import 'package:suranect/features/auth/domain/use_cases/profile/get_profile_use_case.dart';

part 'profile_event.dart';

part 'profile_state.dart';

part 'profile_bloc.freezed.dart';

class ProfileBloc extends Bloc<ProfileEvent, ProfileState> {
  final GetProfileUseCase getProfileUseCase;
  final AuthLocalDataSource authLocalDataSource;

  ProfileBloc({
    required this.getProfileUseCase,
    required this.authLocalDataSource,
  }) : super(const ProfileState.initial()) {
    on<ProfileEvent>((event, emit) async {
      await event.map<FutureOr<void>>(
        appStarted: (value) async {
          final token = await authLocalDataSource.getToken();

          if (token.isEmpty) {
            return add(const ProfileEvent.loggedOut());
          }

          return add(const ProfileEvent.loggedIn());
        },
        loggedIn: (value) async {
          try {
            final response = await getProfileUseCase.call();
            response.fold(
              (l) => add(const ProfileEvent.loggedOut()),
              (r) {
                emit(
                  ProfileState.authenticated(r.userEntity),
                );

                if (r.userEntity.emailVerify != true) {
                  AppRouter.router.go(PAGES.verifyOTP.screenPath);
                } else {
                  AppRouter.router.go(PAGES.home.screenPath);
                }
              },
            );
          } on ConnectionException catch (error) {
            print(error);
          }
        },
        loggedOut: (value) async {
          await authLocalDataSource.deleteToken();
          emit(const ProfileState.unauthenticated());
        },
      );
    });
  }
}
