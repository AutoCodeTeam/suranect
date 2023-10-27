import 'package:bloc/bloc.dart';
import 'package:camera/camera.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'lapor_state.dart';

part 'lapor_cubit.freezed.dart';

class LaporCubit extends Cubit<LaporState> {
  LaporCubit() : super(const LaporState.process());

  void imageChanged(XFile image) {
    emit(
      state.copyWith(image: image),
    );
  }
}
