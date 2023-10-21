part of 'home_bloc.dart';

@freezed
class HomeEvent with _$HomeEvent {
  const factory HomeEvent.started() = _Started;

  const factory HomeEvent.changeCarousel({required int carouselIndex}) =
      _changeCarousel;
}
