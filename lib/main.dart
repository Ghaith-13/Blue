import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'auth/presentation/pages/logIn_screen.dart';
import 'bloc_provider.dart';
import 'config/themes/app_themes.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return blocMultiProvider(
        child: ScreenUtilInit(
      designSize: const Size(375, 812),
      builder: (_, child) {
        return MaterialApp(
          title: 'test',
          debugShowCheckedModeBanner: false,
          theme: appTheme(),
          home: const LigInScreen(),
        );
      },
    ));
  }
}
