import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:portfolio/screens/404/404_desktop.dart';
import 'screens/root/root_screen.dart';
import 'utils/themes.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(1920, 1080),
      minTextAdapt: true,
      builder: (context, child) {
        return MaterialApp(
          title: 'Irejim Jeneri Yu',
          debugShowCheckedModeBanner: false,
          initialRoute: '/',
          theme: AppTheme.define(),
          routes: {
            '/': (context) => const RootScreen(),
          },
          onUnknownRoute: (settings) {
            return MaterialPageRoute(
              builder: (_) => const UnknownRoute(),
            );
          },
        );
      },
    );
  }
}
