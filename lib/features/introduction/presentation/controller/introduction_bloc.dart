import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:suranect/core/use_case/base_use_case.dart';
import 'package:suranect/features/introduction/domain/use_cases/done_intro_use_case.dart';
import 'package:suranect/features/introduction/domain/use_cases/is_intro_in_use_case.dart';

part 'introduction_event.dart';

part 'introduction_state.dart';

part 'introduction_bloc.freezed.dart';

class IntroductionBloc extends Bloc<IntroductionEvent, IntroductionState> {
  final IsIntroInUseCase isIntroInUseCase;
  final DoneIntroUseCase doneIntroUseCase;

  IntroductionBloc(
      {required this.isIntroInUseCase, required this.doneIntroUseCase})
      : super(const _ChangePage(0)) {
    on<IntroductionEvent>(_onIntroductionEvent);
  }

  void _onIntroductionEvent(IntroductionEvent event, emit) async {
    if (event is ChangedPageEvent) {
      emit(IntroductionState.changePage(event.index));
    } else if (event is DoneIntroEvent) {
      final response = await doneIntroUseCase(event.status);
      response.fold(
        (l) => emit(const IntroductionState.changePage(0)),
        (r) => emit(IntroductionState.success(r)),
      );
    } else if (event is IsIntroEvent) {
      final response = await isIntroInUseCase(const DefaultParams());
      response.fold(
          (l) => emit(
                const IntroductionState.changePage(0),
              ), (r) {
        if (r) {
          emit(IntroductionState.success(r));
        } else {
          emit(
            const IntroductionState.changePage(0),
          );
        }
      });
    }
  }

// void _onIntroductionEvent(IntroductionEvent event, emit) {
//   emit(
//     state.when(
//       changePage: (pageIndex) {
//         return event.when(
//           changedPage: (index) {
//             return IntroductionState.changePage(index);
//           },
//         );
//       },
//     ),
//   );
// }
}
