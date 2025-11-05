import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'app_colors.dart';

ThemeData darkTheme = ThemeData(
  brightness: Brightness.dark,
  primaryColor: AppColors.primary,
  dividerColor: AppColors.secondary,
  scaffoldBackgroundColor: AppColors.darkBackground,
  colorScheme: const ColorScheme(
    brightness: Brightness.dark,
    primary: AppColors.primary,
    onPrimary: Colors.white,
    secondary: AppColors.darkText,
    onSecondary: Colors.black,
    surface: AppColors.darkCardBackground,
    onSurface: Colors.black87,
    error: AppColors.darkText,
    onError: Colors.white,
  ),
  appBarTheme: AppBarTheme(
    backgroundColor: AppColors.darkBackground,
    foregroundColor: Colors.white,
    systemOverlayStyle: SystemUiOverlayStyle(
      statusBarBrightness: Brightness.dark,
      statusBarColor: AppColors.darkBackground,
      statusBarIconBrightness: Brightness.light,
    ),
  ),
  textTheme: GoogleFonts.poppinsTextTheme(
    // 👈 using Poppins globally
    const TextTheme(
      headlineLarge: TextStyle(
        fontWeight: FontWeight.w500,
        fontSize: 28,
        color: AppColors.darkText,
      ),
      headlineMedium: TextStyle(
        fontWeight: FontWeight.w500,
        fontSize: 26,
        color: AppColors.darkText,
      ),
      headlineSmall: TextStyle(
        fontWeight: FontWeight.w500,
        fontSize: 24,
        color: AppColors.darkText,
      ),
      titleLarge: TextStyle(
        fontSize: 16,
        fontWeight: FontWeight.w500,
        color: AppColors.darkText,
      ),
      titleMedium: TextStyle(
        fontSize: 14,
        fontWeight: FontWeight.w400,
        color: AppColors.darkText,
      ),
      titleSmall: TextStyle(
        fontSize: 12,
        fontWeight: FontWeight.w400,
        color: AppColors.darkText,
      ),
      bodyLarge: TextStyle(fontSize: 16, color: AppColors.darkbodyText),
      bodyMedium: TextStyle(fontSize: 14, color: AppColors.darkbodyText),
      bodySmall: TextStyle(fontSize: 12, color: AppColors.darkbodyText),
      labelLarge: TextStyle(
        fontSize: 14,
        fontWeight: FontWeight.w600,
        color: AppColors.primary,
      ),
    ),
  ),
  elevatedButtonTheme: ElevatedButtonThemeData(
    style: ElevatedButton.styleFrom(
      backgroundColor: AppColors.secondary,
      foregroundColor: Colors.white,
    ),
  ),
);
