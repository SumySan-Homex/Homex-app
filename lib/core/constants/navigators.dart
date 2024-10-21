import 'package:flutter/material.dart';

goTo({required BuildContext context, required Widget newScreen}) {
  Navigator.push(
    context,
    MaterialPageRoute(builder: (context) => newScreen),
  );
}

goToAndRemove({required BuildContext context, required Widget newScreen}) {
  Navigator.pushAndRemoveUntil(
    context,
    MaterialPageRoute(builder: (context) => newScreen),
    (Route<dynamic> route) => false,
  );
}

popWidget({required BuildContext context}) {
  Navigator.of(context).pop();
}
