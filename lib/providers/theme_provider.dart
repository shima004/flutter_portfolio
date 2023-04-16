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
              backgroundColor: const Color(0xFFE5E5E5),
              cardColor: Colors.white,
              textTheme: ThemeData.light().textTheme.copyWith(
                    headline1: const TextStyle(
                      color: Color(0xFF1B1D21),
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                    headline2: const TextStyle(
                      color: Color(0xFF1B1D21),
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                    headline3: const TextStyle(
                      color: Color(0xFF25272B),
                      fontSize: 14,
                      fontWeight: FontWeight.bold,
                    ),
                    headline4: const TextStyle(
                      color: Color(0xFF25272B),
                      fontSize: 12,
                      fontWeight: FontWeight.bold,
                    ),
                    headline5: const TextStyle(
                      color: Color(0xFF1B1D21),
                      fontSize: 10,
                      fontWeight: FontWeight.bold,
                    ),
                    headline6: const TextStyle(
                      color: Color(0xFF1B1D21),
                      fontSize: 8,
                      fontWeight: FontWeight.bold,
                    ),
                    bodyText1: const TextStyle(
                      color: Color(0xFF1B1D21),
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                    bodyText2: const TextStyle(
                      color: Color(0xFF1B1D21),
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                    subtitle1: const TextStyle(
                      color: Color(0xFF1B1D21),
                      fontSize: 14,
                      fontWeight: FontWeight.bold,
                    ),
                    subtitle2: const TextStyle(
                      color: Color(0xFF1B1D21),
                      fontSize: 12,
                      fontWeight: FontWeight.bold,
                    ),
                    caption: const TextStyle(
                      color: Color(0xFF1B1D21),
                      fontSize: 10,
                      fontWeight: FontWeight.bold,
                    ),
                    overline: const TextStyle(
                      color: Color(0xFF1B1D21),
                      fontSize: 8,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
            ),
            darkTheme: ThemeData.dark().copyWith(
              primaryColor: const Color(0xFFD1D2D3),
              scaffoldBackgroundColor: const Color(0xFF1B1D21),
              backgroundColor: const Color(0xFF1B1D21),
              cardColor: Colors.blueGrey,
              textTheme: ThemeData.dark().textTheme.copyWith(
                    headline1: const TextStyle(
                      color: Color(0xFFD1D2D3),
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                    headline2: const TextStyle(
                      color: Color(0xFFD1D2D3),
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                    headline3: const TextStyle(
                      color: Color(0xFFABABAD),
                      fontSize: 14,
                      fontWeight: FontWeight.bold,
                    ),
                    headline4: const TextStyle(
                      color: Color(0xFFABABAD),
                      fontSize: 12,
                      fontWeight: FontWeight.bold,
                    ),
                    headline5: const TextStyle(
                      color: Colors.white,
                      fontSize: 10,
                      fontWeight: FontWeight.bold,
                    ),
                    headline6: const TextStyle(
                      color: Colors.white,
                      fontSize: 8,
                      fontWeight: FontWeight.bold,
                    ),
                    bodyText1: const TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                    bodyText2: const TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                    subtitle1: const TextStyle(
                      color: Colors.white,
                      fontSize: 14,
                      fontWeight: FontWeight.bold,
                    ),
                    subtitle2: const TextStyle(
                      color: Colors.white,
                      fontSize: 12,
                      fontWeight: FontWeight.bold,
                    ),
                    caption: const TextStyle(
                      color: Color(0xFFABABAD),
                      fontSize: 10,
                      fontWeight: FontWeight.bold,
                    ),
                    overline: const TextStyle(
                      color: Colors.white,
                      fontSize: 8,
                      fontWeight: FontWeight.bold,
                    ),
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
