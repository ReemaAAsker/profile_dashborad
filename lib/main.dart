import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:profile_dashboard/helpers/routes.dart';
import 'package:profile_dashboard/screens/login.dart';
import 'package:profile_dashboard/screens/profile_dash.dart';
import 'package:profile_dashboard/screens/services_screen.dart';
import 'package:profile_dashboard/screens/sign_up.dart';
import 'package:profile_dashboard/screens/splash.dart';

void main() {
  runApp(
    MaterialApp(
      theme: ThemeData(textTheme: GoogleFonts.poppinsTextTheme()),
      debugShowCheckedModeBanner: false,
      routes: {
        AppRoutes.splash: (context) => SplashScreen(),
        AppRoutes.login: (context) => LoginScreen(),
        AppRoutes.dash: (context) => ProfileDashBoard(),
        AppRoutes.services: (context) => ServicesScreen(),
        AppRoutes.signup: (context) => SignUp(),
      },
    ),
  );
}
