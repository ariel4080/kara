import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';

import 'api_response.dart';
import 'model/error_dto.dart';

class JsonTransformer extends BackgroundTransformer {
  JsonTransformer();

  @override
  Future<String> transformRequest(RequestOptions options) {
    debugPrint(options.uri.toString());
    return super.transformRequest(options);
  }

  @override
  Future transformResponse(
    RequestOptions options,
    ResponseBody responseBody,
  ) async {
    final jsonResponse = await super.transformResponse(options, responseBody);
    if (responseBody.statusCode >= 200 && responseBody.statusCode < 300) {
      if (responseBody.statusCode == 201 || responseBody.statusCode == 204) {
        throw DioException(
          requestOptions: options,
          response: Response(
            requestOptions: options,
            statusCode: responseBody.statusCode,
          ),
        );
      }

      if (responseBody.statusCode == 206) {
        return jsonResponse;
      }

      if (jsonResponse is Map<String, dynamic>) {
        if (jsonResponse.containsKey('error') &&
            jsonResponse['error'] != null &&
            (jsonResponse['error'] as List).isNotEmpty) {
          final errorListJson = jsonResponse['error'] as List;
          final errorList =
              errorListJson
                  .map((errorJson) => ErrorDto.fromJson(errorJson))
                  .toList();
          throw ErrorApiResponse(
            httpErrorMessage: responseBody.statusMessage ?? 'Empty message',
            httpStatusCode: responseBody.statusCode,
            errors: errorList,
          );
        }
        if (jsonResponse.containsKey('data')) {
          return jsonResponse['data'];
        }
      }
    }
    return jsonResponse;
  }
}
