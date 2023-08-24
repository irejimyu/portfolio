import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:portfolio/screens/splash/splash.dart';
import 'utils/themes.dart';
import 'package:url_strategy/url_strategy.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  setPathUrlStrategy();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(1920, 1080),
      minTextAdapt: true,
      builder: (context, child) {
        return MaterialApp(
          title: 'Irejim Jeneri Yu',
          debugShowCheckedModeBanner: false,
          theme: AppTheme.define(),
          home: const SplashScreen(),
        );
      },
    );
  }
}
