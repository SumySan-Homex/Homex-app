import 'package:homex/core/api/api.dart';
import 'package:homex/core/enums/enums.dart';
import 'package:homex/features/auth/data/model/params/login_payload.dart';

import '../../../../config/dependency_injection/service_locator.dart';
import '../../../../core/constants/storage/local_storage.dart';
import '../model/params/register_payload.dart';
import '../model/response/login_response.dart';

abstract class AuthService {
  Future<ApiResponse<LoginResponse>> login({required LoginPayload payload});
  Future<ApiResponse> register({required RegisterPayload payload});
}

class AuthServiceImpl extends AuthService {
  final apiClient = Di.getIt<ApiClient>();
  final localStorage = Di.getIt<LocalStorage>();

  @override
  Future<ApiResponse<LoginResponse>> login(
      {required LoginPayload payload}) async {
    final response = await apiClient.request(
      path: 'token/',
      payload: payload.toMap(),
      method: MethodType.post,
      fromJsonT: (json) => LoginResponse.fromMap(json),
    );
    return response;
  }

  @override
  Future<ApiResponse> register({required RegisterPayload payload}) async {
    final response = await apiClient.request(
      path: 'users/',
      payload: payload.toMap(),
      method: MethodType.post,
    );

    return response;
  }
}
