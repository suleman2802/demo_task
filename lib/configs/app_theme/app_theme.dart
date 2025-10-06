import 'package:flutter/material.dart';

import '../app_colors/app_colors.dart';

class AppTheme {
  const AppTheme();

  final ThemeMode mode = ThemeMode.system;

  ThemeData _base(Brightness brightness) {
    return ThemeData(
      scaffoldBackgroundColor: Colors.grey.shade50,
      useMaterial3: true,
      visualDensity: VisualDensity.adaptivePlatformDensity,
      appBarTheme: AppBarTheme(
        centerTitle: false,
        backgroundColor: AppColors.primaryBlueColor,
        foregroundColor: AppColors.primaryWhiteColor,
      ),
      brightness: brightness,
      inputDecorationTheme: InputDecorationTheme(
        labelStyle: const TextStyle(fontWeight: FontWeight.w500),
        floatingLabelBehavior: FloatingLabelBehavior.always,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(20),
          borderSide: BorderSide(color: AppColors.primaryBlueColor),
        ),
      ),
      //MUS
      textTheme: const TextTheme(
        displayLarge: TextStyle(fontSize: 59.0, fontWeight: FontWeight.w400),
        displayMedium: TextStyle(fontSize: 47.0, fontWeight: FontWeight.w400),
        displaySmall: TextStyle(fontSize: 38.0, fontWeight: FontWeight.w400),
        headlineLarge: TextStyle(fontSize: 34.0, fontWeight: FontWeight.w400),
        headlineMedium: TextStyle(fontSize: 30.0, fontWeight: FontWeight.w400),
        headlineSmall: TextStyle(fontSize: 26.0, fontWeight: FontWeight.w400),
        titleLarge: TextStyle(fontSize: 24.0, fontWeight: FontWeight.w400),
        titleMedium: TextStyle(fontSize: 18.0, fontWeight: FontWeight.w500),
        titleSmall: TextStyle(fontSize: 16.0, fontWeight: FontWeight.w500),
        bodyLarge: TextStyle(fontSize: 18.0, fontWeight: FontWeight.w400),
        bodyMedium: TextStyle(fontSize: 16.0, fontWeight: FontWeight.w400),
        bodySmall: TextStyle(fontSize: 14.0, fontWeight: FontWeight.w400),
        labelLarge: TextStyle(fontSize: 16.0, fontWeight: FontWeight.w500),
        labelMedium: TextStyle(fontSize: 14.0, fontWeight: FontWeight.w500),
        labelSmall: TextStyle(fontSize: 13.0, fontWeight: FontWeight.w500),
      ),
      //MUE
      colorScheme: ColorScheme.fromSeed(seedColor: AppColors.primaryBlueColor),
      floatingActionButtonTheme: FloatingActionButtonThemeData(
        backgroundColor: AppColors.primaryBlueColor,
        foregroundColor: AppColors.primaryWhiteColor,
      ),
      tabBarTheme: TabBarThemeData(
        indicatorSize: TabBarIndicatorSize.label,
        indicatorColor: AppColors.primaryWhiteColor,
        labelColor: AppColors.primaryWhiteColor,
        unselectedLabelColor: AppColors.primaryWhiteColor,
      ),
    );
  }

  ThemeData get() {
    return light();
  }

  ThemeData light() {
    final colors = ColorScheme.fromSeed(
      seedColor: AppColors.primaryBlueColor,
      brightness: Brightness.light,
    );
    final root = _base(
      Brightness.light,
    ).copyWith(brightness: Brightness.light, colorScheme: colors);
    return root.copyWith(textTheme: root.textTheme.withColor(colors.onSurface));
  }

  ThemeData dark() {
    final colors = ColorScheme.fromSeed(
      seedColor: AppColors.primaryBlueColor,
      brightness: Brightness.dark,
    );
    final root = _base(
      Brightness.dark,
    ).copyWith(brightness: Brightness.dark, colorScheme: colors);
    return root.copyWith(textTheme: root.textTheme.withColor(colors.onSurface));
  }
}

extension on TextTheme {
  TextTheme withColor(Color value) {
    return copyWith(
      displayLarge: displayLarge!.copyWith(color: value),
      displayMedium: displayMedium!.copyWith(color: value),
      displaySmall: displaySmall!.copyWith(color: value),
      headlineLarge: headlineLarge!.copyWith(color: value),
      headlineMedium: headlineMedium!.copyWith(color: value),
      headlineSmall: headlineSmall!.copyWith(color: value),
      bodyLarge: bodyLarge!.copyWith(color: value),
      bodyMedium: bodyMedium!.copyWith(color: value),
      bodySmall: bodySmall!.copyWith(color: value),
      titleLarge: titleLarge!.copyWith(color: value),
      titleMedium: titleMedium!.copyWith(color: value),
      titleSmall: titleSmall!.copyWith(color: value),
      labelLarge: labelLarge!.copyWith(color: value),
      labelMedium: labelMedium!.copyWith(color: value),
      labelSmall: labelSmall!.copyWith(color: value),
    );
  }
}
