part of 'home_bloc.dart';

@freezed
class HomeState with _$HomeState {
  const factory HomeState.initial() = _Initial;

  const factory HomeState.loaded({
    @Default(0) int carouselIndex,
    @Default([
      "assets/images/carousel_image1.png",
      "assets/images/news_example.png",
    ])
    List news,
  }) = _Loaded;
}
