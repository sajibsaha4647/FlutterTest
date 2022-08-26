import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'Utils/Routes/Routes.dart';
import 'Utils/Routes/RoutesName.dart';
import 'View/SplashScreen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(360, 812),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (BuildContext context, Widget? child) {
        return  MaterialApp(
          debugShowCheckedModeBanner: false,
          onGenerateRoute: Routes.generateRoute ,
          initialRoute: RoutesName.splashscreen,
          theme: ThemeData(
              primarySwatch: Colors.blue
          ),
          home: SplashScreen(),
        );
      },

    );
  }

}


