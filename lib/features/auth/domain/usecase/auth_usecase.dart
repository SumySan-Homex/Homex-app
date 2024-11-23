import 'package:homex/config/dependency_injection/service_locator.dart';
import 'package:homex/features/auth/domain/repository/auth_repo.dart';

import '../../../../core/constants/type_def.dart';
import '../../data/model/params/login_payload.dart';
import '../../data/model/params/register_payload.dart';
import '../../data/model/response/login_response.dart';

class AuthUsecase {
  final authRepo = Di.getIt<AuthRepo>();

  ApiResult<LoginResponse> login({required LoginPayload payload}) async {
    return await authRepo.login(payload: payload);
  }

  ApiResult<bool> register({required RegisterPayload payload}) async {
    return await authRepo.register(payload: payload);
  }
}
