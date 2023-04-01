import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';

class ThemeModel extends Equatable {
  final Color _themeColor;

  const ThemeModel({themeColor = Colors.black38}) : _themeColor = themeColor;

  Color get getThemeColor => _themeColor;

  ThemeModel copyWith({
    Color? themeColor,
  }) {
    return ThemeModel(
      themeColor: themeColor ?? _themeColor,
    );
  }

  @override
  List<Object?> get props => [_themeColor];
}
