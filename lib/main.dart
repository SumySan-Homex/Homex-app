import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:homex/config/dependency_injection/service_locator.dart';
import 'package:homex/features/app/presentation/pages/home_nav.dart';
import 'package:homex/features/app/presentation/pages/message/message.dart';
import 'package:homex/features/auth/presentation/sm/auth_provider.dart';
import 'package:provider/provider.dart';

import 'features/auth/presentation/pages/onboarding.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  Di.setUpLocator();
  runApp(MultiProvider(
      providers: [ChangeNotifierProvider(create: (context) => AuthProvider())],
      child: const MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(430, 932),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (_, child) {
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'Homex',
          theme: ThemeData(
            fontFamily: 'Poppins',
            colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
            useMaterial3: true,
          ),
          home: const HomeNav(),
        );
      },
    );
  }
}
