import 'package:freezed_annotation/freezed_annotation.dart';

part 'umkm.freezed.dart';

part 'umkm.g.dart';

@freezed
class Umkm with _$Umkm {
  const factory Umkm({
    @JsonKey(name: "ID") required int id,
    @JsonKey(name: "Image") required String image,
    @JsonKey(name: "Name") required String name,
    @JsonKey(name: "Description") required String description,
    @JsonKey(name: "Building") required String building,
    @JsonKey(name: "Address") required String address,
    @JsonKey(name: "List_product") required List<ListProduct> listProduct,
  }) = _Umkm;

  factory Umkm.fromJson(Map<String, dynamic> json) => _$UmkmFromJson(json);
}

@freezed
class ListProduct with _$ListProduct {
  const factory ListProduct({
    @JsonKey(name: "Image_product") required String imageProduct,
    @JsonKey(name: "Name-product") required String nameProduct,
  }) = _ListProduct;

  factory ListProduct.fromJson(Map<String, dynamic> json) =>
      _$ListProductFromJson(json);
}
