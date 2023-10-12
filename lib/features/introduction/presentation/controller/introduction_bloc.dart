import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'introduction_event.dart';

part 'introduction_state.dart';

part 'introduction_bloc.freezed.dart';

class IntroductionBloc extends Bloc<IntroductionEvent, IntroductionState> {
  IntroductionBloc() : super(const _ChangePage(0)) {
    on<IntroductionEvent>(_onIntroductionEvent);
  }

  void _onIntroductionEvent(IntroductionEvent event, emit) {
    emit(
      state.when(
        changePage: (pageIndex) {
          return event.when(
            changedPage: (index) {
              return IntroductionState.changePage(index);
            },
          );
        },
      ),
    );
  }
}
