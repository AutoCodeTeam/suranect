import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:suranect/app/di/injector.dart';
import 'package:suranect/core/utils/log_services.dart';

class AppBlocObserver extends BlocObserver {
  AppBlocObserver() {
    _logService = injector<LogService>();
  }

  late final LogService _logService;

  @override
  void onCreate(BlocBase bloc) {
    _logService.i('BLoC: ${bloc.runtimeType} created');
    super.onCreate(bloc);
  }

  @override
  void onEvent(Bloc bloc, Object? event) {
    _logService.i('Event: ${event.runtimeType} added');
    super.onEvent(bloc, event);
  }
}