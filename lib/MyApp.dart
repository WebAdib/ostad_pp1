import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:device_preview/device_preview.dart';

import 'package:ostad_pp1/Module9_Class1.dart';

import 'Module11_Class1.dart';
import 'Module9_Class2.dart';
import 'Module9_Class3.dart';
import 'MyHomePage.dart';

// My application
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Sizer(builder: (context, orientation, deviceType) {
      return MaterialApp(
        useInheritedMediaQuery: true,
        locale: DevicePreview.locale(context),
        builder: DevicePreview.appBuilder,
        theme: ThemeData(
          primaryColor: Colors.blue,
          primarySwatch: Colors.blue,
          visualDensity: VisualDensity.adaptivePlatformDensity,
          appBarTheme: AppBarTheme(
            color: Colors.blue,
            centerTitle: true,
            foregroundColor: Colors.white,
          ),
          elevatedButtonTheme: ElevatedButtonThemeData(
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.blue,
              foregroundColor: Colors.white,
              elevation: 4.0,
            ),
          ),
        ),
        title: '1st Practice App',
        debugShowCheckedModeBanner: false,
        home: Module11_Class1(),
      );
    });
  }
}
