import 'dart:convert';

import 'package:flutter/services.dart';
import 'package:suranect/app/network/base/api_error.dart';
import 'package:suranect/app/network/base/api_result.dart';
import 'package:suranect/features/wisata/data/remote/data_sources/wisata_remote_data_source.dart';
import 'package:suranect/features/wisata/data/remote/models/wisata_response.dart';

class WisataRemoteDataSourceImpl extends WisataRemoteDataSource {
  @override
  Future<ApiResult<WisataResponse>> getWisata() async {
    final String jsonData =
        await rootBundle.loadString('assets/json/wisata.json');

    final Map<String, dynamic> response = json.decode(jsonData);
    mapper(data) => WisataResponse.fromJson(data);

    if (response['Status'] == "success") {
      return Success(mapper(response));
    } else if (response['Status'] == "errpr") {
      return ServerError(
          const ApiError(code: null, message: "Something Went Wrong"));
    } else {
      return InternalError();
    }
  }
}