import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:suranect/core/theme/app_colors.dart';

ThemeData appTheme({required double screenHeight}) {
  return ThemeData(
    fontFamily: "Barlow",
    scaffoldBackgroundColor: AppColors.neutral_20,
    textTheme: textTheme(screenHeight: screenHeight),
    brightness: Brightness.light,
    bottomSheetTheme: const BottomSheetThemeData(
      backgroundColor: Colors.transparent,
    ),
    colorScheme: const ColorScheme.light(
      brightness: Brightness.light,
      primary: AppColors.blue_60,
      onPrimary: AppColors.blue_100,
      secondary: AppColors.info_60,
      onSecondary: AppColors.info_100,
      background: Color(0xFFF6FBFB),
    ),
    appBarTheme: const AppBarTheme(
      systemOverlayStyle: SystemUiOverlayStyle(
        statusBarBrightness: Brightness.light,
        statusBarIconBrightness: Brightness.dark,
        statusBarColor: AppColors.white,
      ),
      backgroundColor: AppColors.white,
      elevation: 0,
      centerTitle: true,
      iconTheme: IconThemeData(
        color: AppColors.black,
      ),
      titleTextStyle: TextStyle(
        color: Colors.black,
        fontSize: 18,
        fontWeight: FontWeight.bold,
      ),
    ),
  );
}

TextTheme textTheme({required double screenHeight}) {
  double displayLarge = 28;
  double displayMedium = 22;
  double displaySmall = 18;
  double headlineLarge = 18;
  double headlineMedium = 16;
  double headlineSmall = 14;
  double titleLarge = 14;
  double bodyLarge = 14;
  double bodyMedium = 12;
  double bodySmall = 10;

  if (screenHeight <= 732) {
    displayLarge = 26;
    displayMedium = 20;
    displaySmall = 16;
    headlineLarge = 16;
    headlineMedium = 14.0;
    headlineSmall = 12;
    titleLarge = 14;
    bodyLarge = 14;
    bodyMedium = 12;
    bodySmall = 10;
  }

  if (screenHeight <= 640) {
    displayLarge = 24;
    displayMedium = 18;
    displaySmall = 14;
    headlineLarge = 14;
    headlineMedium = 12.0;
    headlineSmall = 10;
    titleLarge = 14;
    bodyLarge = 14;
    bodyMedium = 12;
    bodySmall = 10;
  }

  return TextTheme(
    displayLarge: TextStyle(
      color: Colors.black,
      fontSize: displayLarge,
      fontWeight: FontWeight.bold,
    ),
    displayMedium: TextStyle(
      color: Colors.black,
      fontSize: displayMedium,
      fontWeight: FontWeight.bold,
    ),
    displaySmall: TextStyle(
      color: Colors.black,
      fontSize: displaySmall,
      fontWeight: FontWeight.bold,
    ),
    headlineLarge: TextStyle(
      color: Colors.black,
      fontSize: headlineLarge,
      fontWeight: FontWeight.bold,
    ),
    headlineMedium: TextStyle(
      color: Colors.black,
      fontSize: headlineMedium,
      fontWeight: FontWeight.bold,
    ),
    headlineSmall: TextStyle(
      color: Colors.black,
      fontSize: headlineSmall,
      fontWeight: FontWeight.bold,
    ),
    titleLarge: TextStyle(
      color: Colors.black,
      fontSize: titleLarge,
      fontWeight: FontWeight.normal,
    ),
    bodyLarge: TextStyle(
      color: Colors.black,
      fontSize: bodyLarge,
      fontWeight: FontWeight.normal,
    ),
    bodyMedium: TextStyle(
      color: Colors.black,
      fontSize: bodyMedium,
      fontWeight: FontWeight.normal,
    ),
    bodySmall: TextStyle(
      color: Colors.black,
      fontSize: bodySmall,
      fontWeight: FontWeight.normal,
    ),
  );
}
