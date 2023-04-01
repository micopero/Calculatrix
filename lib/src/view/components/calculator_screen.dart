import 'package:calculatrix/src/controllers/calculator_controller.dart';
import 'package:calculatrix/src/controllers/theme_controller.dart';
import 'package:calculatrix/src/view/widgets/rectangular_container.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class CalculatorScreen extends ConsumerWidget {
  const CalculatorScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final calculatorController = ref.watch(calculatorControllerProvider);
    final themeController = ref.watch(themeControllerProvider);
    Color themeColor = themeController.getThemeColor;

    return Center(
      child: RectangularContainer(
        value: calculatorController.getEquation,
        borderColor: themeColor,
      ),
    );
  }
}
