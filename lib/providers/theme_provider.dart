// ignore: unused_import
import 'package:flutter/material.dart';
import 'package:flutter_portfolio/freezed/theme_state.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class ThemeNotifier extends StateNotifier<ThemeState> {
  ThemeNotifier()
      : super(
          ThemeState(
            isDarkModeEnabled: false,
            lightTheme: ThemeData.light().copyWith(
              primaryColor: const Color(0xFF1B1D21),
              scaffoldBackgroundColor: const Color(0xFFE5E5E5),
              cardColor: Colors.white,
              textTheme: ThemeData.light().textTheme.copyWith(
                    displayLarge: const TextStyle(
                      color: Color(0xFF1B1D21),
                      fontSize: 40,
                      fontWeight: FontWeight.bold,
                    ),
                    displayMedium: const TextStyle(
                      color: Color(0xFF1B1D21),
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                    displaySmall: const TextStyle(
                      color: Color(0xFF25272B),
                      fontSize: 14,
                      fontWeight: FontWeight.bold,
                    ),
                    headlineMedium: const TextStyle(
                      color: Color(0xFF25272B),
                      fontSize: 12,
                      fontWeight: FontWeight.bold,
                    ),
                    headlineSmall: const TextStyle(
                      color: Color(0xFF1B1D21),
                      fontSize: 10,
                      fontWeight: FontWeight.bold,
                    ),
                    titleLarge: const TextStyle(
                      color: Color(0xFF1B1D21),
                      fontSize: 40,
                      fontWeight: FontWeight.bold,
                    ),
                    titleMedium: const TextStyle(
                      color: Color(0xFF1B1D21),
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                    ),
                    titleSmall: const TextStyle(
                      color: Color(0xFF1B1D21),
                      fontSize: 12,
                      fontWeight: FontWeight.bold,
                    ),
                    bodyLarge: const TextStyle(
                      color: Color(0xFF1B1D21),
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                    bodyMedium: const TextStyle(
                      color: Color(0xFF1B1D21),
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                    bodySmall: const TextStyle(
                      color: Color(0xFF1B1D21),
                      fontSize: 20,
                      fontWeight: FontWeight.normal,
                    ),
                    labelSmall: const TextStyle(
                      color: Color(0xFF1B1D21),
                      fontSize: 8,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
              // colorScheme: ColorScheme(background: const Color(0xFFE5E5E5)),
              colorScheme: ThemeData.light().colorScheme.copyWith(
                    background: const Color(0xFFE5E5E5),
                  ),
            ),
            darkTheme: ThemeData.dark().copyWith(
              primaryColor: const Color(0xFFD1D2D3),
              scaffoldBackgroundColor: const Color(0xFF1B1D21),
              cardColor: Colors.blueGrey,
              textTheme: ThemeData.dark().textTheme.copyWith(
                    displayLarge: const TextStyle(
                      color: Color(0xFFD1D2D3),
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                    displayMedium: const TextStyle(
                      color: Color(0xFFD1D2D3),
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                    displaySmall: const TextStyle(
                      color: Color(0xFFABABAD),
                      fontSize: 14,
                      fontWeight: FontWeight.bold,
                    ),
                    headlineMedium: const TextStyle(
                      color: Color(0xFFABABAD),
                      fontSize: 12,
                      fontWeight: FontWeight.bold,
                    ),
                    headlineSmall: const TextStyle(
                      color: Colors.white,
                      fontSize: 10,
                      fontWeight: FontWeight.bold,
                    ),
                    titleLarge: const TextStyle(
                      color: Color(0xFFD1D2D3),
                      fontSize: 40,
                      fontWeight: FontWeight.bold,
                    ),
                    bodyLarge: const TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                    bodyMedium: const TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                    titleMedium: const TextStyle(
                      color: Color(0xFFD1D2D3),
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                    ),
                    titleSmall: const TextStyle(
                      color: Color(0xFFD1D2D3),
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                    bodySmall: const TextStyle(
                      color: Color(0xFFD1D2D3),
                      fontSize: 20,
                      fontWeight: FontWeight.normal,
                    ),
                    labelSmall: const TextStyle(
                      color: Colors.white,
                      fontSize: 8,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
              // colorScheme: ColorScheme(background: const Color(0xFF1B1D21)),
              colorScheme: ThemeData.dark().colorScheme.copyWith(
                    background: const Color(0xFF1B1D21),
                  ),
            ),
          ),
        );

  void toggleTheme() {
    state = state.copyWith(
      isDarkModeEnabled: !state.isDarkModeEnabled,
    );
  }
}

final themeProvider = StateNotifierProvider<ThemeNotifier, ThemeState>(
  (ref) => ThemeNotifier(),
);
