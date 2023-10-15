part of 'introduction_bloc.dart';

@freezed
class IntroductionEvent with _$IntroductionEvent {
  const factory IntroductionEvent.changedPage(int index) = ChangedPageEvent;
  const factory IntroductionEvent.doneIntro(bool status) = DoneIntroEvent;
  const factory IntroductionEvent.isIntro() = IsIntroEvent;
}
