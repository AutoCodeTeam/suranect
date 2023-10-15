part of 'introduction_bloc.dart';

@freezed
class IntroductionState with _$IntroductionState {
  const factory IntroductionState.changePage(int pageIndex) = _ChangePage;

  const factory IntroductionState.success(bool status) = _Success;

  int get pageIndex {
    return when(
      changePage: (pageIndex) => pageIndex,
      success: (bool status) => 0,
    );
  }
}
