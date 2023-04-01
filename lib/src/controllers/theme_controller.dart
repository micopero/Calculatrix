import 'package:calculatrix/src/model/theme_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class ThemeController extends StateNotifier<ThemeModel> {
  ThemeController(super.state);

  void updateThemeColor(Color chosenThemeColor) =>
      state = state.copyWith(themeColor: chosenThemeColor);
}

final themeControllerProvider =
    StateNotifierProvider<ThemeController, ThemeModel>((ref) {
  return ThemeController(const ThemeModel());
});
