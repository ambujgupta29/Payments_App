import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'app_colors.dart';

ThemeData lightTheme = ThemeData(
  brightness: Brightness.light,
  primaryColor: AppColors.primary,
  dividerColor: AppColors.secondary,
  colorScheme: const ColorScheme(
    brightness: Brightness.light,
    primary: AppColors.primary,
    onPrimary: Colors.white,
    secondary: AppColors.lightText,
    onSecondary: Colors.black,
    surface: AppColors.lightCardBackground,
    onSurface: Colors.black87,
    error: AppColors.lightText,
    onError: Colors.white,
  ),

  scaffoldBackgroundColor: AppColors.lightBackground,
  appBarTheme: const AppBarTheme(
    backgroundColor: AppColors.primary,
    foregroundColor: Colors.white,
    systemOverlayStyle: SystemUiOverlayStyle(
      statusBarBrightness: Brightness.light,
      statusBarColor: AppColors.lightBackground,
      statusBarIconBrightness: Brightness.dark,
    ),
  ),
  textTheme: GoogleFonts.poppinsTextTheme(
    // 👈 using Poppins globally
    const TextTheme(
      headlineLarge: TextStyle(
        fontWeight: FontWeight.w500,
        fontSize: 28,
        color: AppColors.lightText,
      ),
      headlineMedium: TextStyle(
        fontWeight: FontWeight.w500,
        fontSize: 26,
        color: AppColors.lightText,
      ),
      headlineSmall: TextStyle(
        fontWeight: FontWeight.w500,
        fontSize: 24,
        color: AppColors.lightText,
      ),
      titleLarge: TextStyle(
        fontSize: 16,
        fontWeight: FontWeight.w500,
        color: AppColors.lightText,
      ),
      titleMedium: TextStyle(
        fontSize: 14,
        fontWeight: FontWeight.w400,
        color: AppColors.lightText,
      ),
      titleSmall: TextStyle(
        fontSize: 12,
        fontWeight: FontWeight.w400,
        color: AppColors.lightText,
      ),

      bodyLarge: TextStyle(fontSize: 16, color: AppColors.lightbodyText),
      bodyMedium: TextStyle(fontSize: 14, color: AppColors.lightbodyText),
      bodySmall: TextStyle(fontSize: 12, color: AppColors.lightbodyText),

      labelLarge: TextStyle(
        fontSize: 14,
        fontWeight: FontWeight.w600,
        color: AppColors.primary,
      ),
    ),
  ),
  elevatedButtonTheme: ElevatedButtonThemeData(
    style: ElevatedButton.styleFrom(
      backgroundColor: AppColors.primary,
      foregroundColor: Colors.white,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.all(Radius.circular(12)),
      ),
    ),
  ),
);
