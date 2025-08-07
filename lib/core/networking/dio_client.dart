import 'package:dio/dio.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'json_transformer.dart';

part 'dio_client.g.dart';

@riverpod
Dio dioClient(ref) {
  return DioClient().getDioClient(baseUrl: dotenv.env['API_BASE_URL'] ?? '');
}

class DioClient {
  Dio getDioClient({
    required String baseUrl,
    BaseOptions? options,
    Duration connectTimeout = const Duration(seconds: 10),
    Duration receiveTimeout = const Duration(seconds: 10),
    Duration sendTimeout = const Duration(seconds: 10),
  }) {
    // Set base options for Dio
    final BaseOptions options = BaseOptions(
      baseUrl: baseUrl,
      connectTimeout: connectTimeout, // Connection timeout
      receiveTimeout: receiveTimeout, // Read timeout
      sendTimeout: sendTimeout, // Send timeout
    );
    final client = Dio(options);
    client.transformer = JsonTransformer();
    client.interceptors.add(
      LogInterceptor(
        request: true,
        requestHeader: true,
        requestBody: true,
        responseHeader: true,
        responseBody: true,
        error: true,
      ),
    );

    return client;
  }
}
