import 'package:dio/dio.dart';

import '../../enums/enums.dart';

import '../../utils/debug_logger.dart';
import '../error/custom_error.dart';
import 'api_client.dart';
import '../response/api_response.dart';

class DioClient implements ApiClient {
  late Dio _client;
  // late CustomInterceptor _customInterceptor;

  DioClient() {
    _client = Dio(BaseOptions(
      baseUrl: 'http://127.0.0.1:8000/api/',
      // connectTimeout: const Duration(seconds: 10),
      // receiveTimeout: const Duration(seconds: 10),
      // sendTimeout: const Duration(seconds: 10)),
    ));
  }

  @override
  void removeToken() {
    _client.options.headers.remove('Authorization');
  }

  @override
  void setToken(String token) {
    _client.options.headers['Authorization'] = 'Bearer $token';
    _client.options.headers['Content-Type'] = 'application/json';
  }

  @override
  Future<ApiResponse<T>> request<T>({
    required String path,
    required MethodType method,
    Map<String, dynamic>? payload,
    Map<String, dynamic>? queryParameters,
    Map<String, dynamic>? rawData,
    T Function(Map<String, dynamic> json)? fromJsonT,
    bool? showLoader,
    bool? useBaseUrlWithoutUser,
  }) async {
    ApiResponse<T> apiResponse;
    Response response;
    try {
      if (useBaseUrlWithoutUser != null && useBaseUrlWithoutUser == true) {
        _client.options.baseUrl = 'https://sina-197e3113561f.herokuapp.com/';
      }
      switch (method) {
        case MethodType.get:
          response = await _client.get(
            path,
            data: payload,
            queryParameters: queryParameters,
          );
          break;
        case MethodType.post:
          response = await _client.post(
            path,
            data: payload,
            queryParameters: queryParameters,
          );
          break;
        case MethodType.put:
          response = await _client.put(
            path,
            data: payload,
            queryParameters: queryParameters,
          );
          break;
        case MethodType.delete:
          response = await _client.delete(
            path,
            data: payload,
            queryParameters: queryParameters,
          );
          break;
        case MethodType.patch:
          response = await _client.patch(
            path,
            data: payload,
            queryParameters: queryParameters,
          );
          break;
      }

      apiResponse = ApiResponse(
        data: fromJsonT?.call(response.data),
        rawJson: response.data,
        statusCode: response.statusCode.toString(),
        success: true,
      );

      return apiResponse;
    } catch (e) {
      DebugLogger.log('DIO ERROR', e.toString());
      var err = CustomHandler.getError(error: e);
      apiResponse = ApiResponse(success: false, failure: err);
      return apiResponse;
    }
  }

  @override
  String handleException(Exception exception) {
    throw UnimplementedError();
  }
}
