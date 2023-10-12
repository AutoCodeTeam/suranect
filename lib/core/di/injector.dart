import 'package:get_it/get_it.dart';
import 'package:suranect/features/introduction/presentation/controller/introduction_bloc.dart';

final injector = GetIt.instance;

Future<void> initDependencies() async {
  /// BloC ///
  injector.registerFactory(() => IntroductionBloc());
}
