import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:homex/core/constants/navigators.dart';
import 'package:homex/core/utils/flushbar_notification.dart';
import 'package:homex/features/auth/data/model/params/login_payload.dart';
import 'package:homex/features/auth/data/model/params/register_payload.dart';
import 'package:homex/features/auth/presentation/pages/login.dart';

import '../../../../config/dependency_injection/service_locator.dart';
import '../../domain/usecase/auth_usecase.dart';

class AuthProvider extends ChangeNotifier {
  final authUsecase = Di.getIt<AuthUsecase>();

  bool _isLoading = false;
  bool get isLoading => _isLoading;

  void _setLoading(bool value) {
    _isLoading = value;
    notifyListeners();
  }

  Future<void> register(
      {required BuildContext context, required RegisterPayload payload}) async {
    _setLoading(true);
    final result = await authUsecase.register(payload: payload);
    result.fold((failure) {
      _setLoading(false);
      FlushbarNotification.showErrorMessage(context, message: failure.message);
    }, (success) async {
      _setLoading(false);
      await FlushbarNotification.showSuccessMessage(context,
          message: 'Registration Success');
      WidgetsBinding.instance.addPostFrameCallback((_) {
        goTo(context: context, newScreen: const LoginScreen());
      });
    });
  }

  Future<void> login(
      {required BuildContext context, required LoginPayload payload}) async {
    _setLoading(true);
    final result = await authUsecase.login(payload: payload);
    result.fold((failure) {
      _setLoading(false);
      FlushbarNotification.showErrorMessage(context, message: failure.message);
    }, (success) async {
      _setLoading(false);
      await FlushbarNotification.showSuccessMessage(context,
          message: 'Login Success');
      // WidgetsBinding.instance.addPostFrameCallback((_) {
      //   goTo(context: context, newScreen: const LoginScreen());
      // });
    });
  }
}
