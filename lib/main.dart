import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mobileapp/product/component/general_theme.dart';
import 'feature/home/view/homeview.dart';
import 'feature/splash/view/splash.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(390, 844),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (BuildContext context, Widget? child) {
        return MaterialApp(
          theme: GeneralTheme().generalTheme,
          debugShowCheckedModeBanner: false,
          home: HomeView(
            token: 'c',
          ),
        );
      },
    );
  }
}
