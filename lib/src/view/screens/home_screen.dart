import 'package:calculatrix/src/core/constants/calculatrix_colors.dart';
import 'package:calculatrix/src/view/components/calculator_buttons.dart';
import 'package:calculatrix/src/view/components/calculator_screen.dart';
import 'package:calculatrix/src/view/components/theme_settings.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: CalculatrixColors.kBackgroundSecondary,
        body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const ThemeSettings(),
                SizedBox(height: 5.h),
                const CalculatorScreen(),
                SizedBox(height: 5.h),
                const CalculatorButtons(),
              ],
            ),
          ),
        ));
  }
}
