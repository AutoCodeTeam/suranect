part of 'main_tab_bloc.dart';

@freezed
class MainTabEvent with _$MainTabEvent {
  const factory MainTabEvent.changedTab(int index) = _ChangedPageEvent;
}
