import 'package:rebuy/src/core/theme/theme.dart';

import 'src/core/config/config.dart';
import 'package:flutter/material.dart';
import 'src/core/routes/routes.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ReBuyApp extends StatelessWidget {
  const ReBuyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(414, 896),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (context, ch) => DismissKeyboard(
        child: MaterialApp(
          theme: AppThemes.defaultTheme,
          debugShowCheckedModeBanner: false,
          initialRoute: RouteNames.initial,
          onGenerateRoute: AppRoute.generate,
        ),
      ),
    );
  }
}
