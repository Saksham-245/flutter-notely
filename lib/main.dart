import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:notely/screens/home.dart';
import 'package:notely/screens/splash.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(375, 812),
      builder: ((context, child) => MaterialApp(
            title: 'Notely',
            theme: ThemeData(
              primarySwatch: Colors.blue,
              backgroundColor: const Color.fromRGBO(
                248,
                238,
                226,
                1,
              ),
              textTheme: TextTheme(
                headline1: GoogleFonts.titanOne(
                  fontWeight: FontWeight.w400,
                ),
                headline2: GoogleFonts.nunito(
                  fontWeight: FontWeight.w900,
                ),
                headline3: GoogleFonts.nunito(
                  fontWeight: FontWeight.w700,
                ),
                headline4: GoogleFonts.nunito(
                  fontWeight: FontWeight.w800,
                ),
              ),
            ),
            home: const SplashScreen(),
          )),
    );
  }
}
