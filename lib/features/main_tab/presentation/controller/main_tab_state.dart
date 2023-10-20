part of 'main_tab_bloc.dart';

@freezed
class MainTabState with _$MainTabState {
  const MainTabState._();

  const factory MainTabState.tabIndex({required int index, @Default([]) List<MyCustomBottomNavBarItem> navbarItem}) = _Initial;
}
