part of 'introduction_bloc.dart';

@freezed
class IntroductionState with _$IntroductionState {
  const factory IntroductionState.changePage(int pageIndex) = _ChangePage;
}
