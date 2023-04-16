import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'theme_state.freezed.dart';

@freezed
class ThemeState with _$ThemeState {
  const factory ThemeState({
    required bool isDarkModeEnabled,
    required ThemeData lightTheme,
    required ThemeData darkTheme,
  }) = _ThemeState;
}
