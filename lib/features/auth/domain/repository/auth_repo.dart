import 'package:dartz/dartz.dart';
import 'package:homex/config/dependency_injection/service_locator.dart';
import 'package:homex/core/constants/type_def.dart';
import 'package:homex/core/utils/debug_logger.dart';
import 'package:homex/features/auth/data/model/params/login_payload.dart';
import 'package:homex/features/auth/data/model/params/register_payload.dart';
import 'package:homex/features/auth/data/remote/auth_service.dart';

import '../../data/model/response/login_response.dart';

abstract class AuthRepo {
  ApiResult<LoginResponse> login({required LoginPayload payload});
  ApiResult<bool> register({required RegisterPayload payload});
}

class AuthRepoImpl extends AuthRepo {
  final authService = Di.getIt<AuthService>();
  @override
  ApiResult<LoginResponse> login({required LoginPayload payload}) async {
    final response = await authService.login(payload: payload);
    DebugLogger.log('LOGIN RESPONSE', response.rawJson);
    if (response.success!) {
      return Right(response.data!);
    } else {
      return Left(response.failure!);
    }
  }

  @override
  ApiResult<bool> register({required RegisterPayload payload}) async {
    final response = await authService.register(payload: payload);
    DebugLogger.log('REGISTER RESPONSE', response.rawJson);
    if (response.success!) {
      return const Right(true);
    } else {
      return Left(response.failure!);
    }
  }
}
