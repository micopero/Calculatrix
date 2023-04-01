import 'package:calculatrix/src/controllers/calculator_controller.dart';
import 'package:calculatrix/src/controllers/theme_controller.dart';
import 'package:calculatrix/src/view/widgets/circular_button.dart';
import 'package:calculatrix/src/view/widgets/oval_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:sizer/sizer.dart';

class CalculatorButtons extends ConsumerWidget {
  const CalculatorButtons({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final calculatorController =
        ref.read(calculatorControllerProvider.notifier);

    final themeController = ref.watch(themeControllerProvider);
    Color themeColor = themeController.getThemeColor;

    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      mainAxisSize: MainAxisSize.min,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CircularButton(
                symbol: "7",
                borderColor: themeColor,
                onPressed: () => calculatorController.updateScreenValue("7")),
            const ButtonsSpacer(),
            CircularButton(
                symbol: "8",
                borderColor: themeColor,
                onPressed: () => calculatorController.updateScreenValue("8")),
            const ButtonsSpacer(),
            CircularButton(
                symbol: "9",
                borderColor: themeColor,
                onPressed: () => calculatorController.updateScreenValue("9")),
            const ButtonsSpacer(),
            CircularButton(
                symbol: "+",
                borderColor: themeColor,
                onPressed: () => calculatorController.updateScreenValue("+")),
            const ButtonsSpacer(),
          ],
        ),
        SizedBox(height: 3.h),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CircularButton(
                symbol: "4",
                borderColor: themeColor,
                onPressed: () => calculatorController.updateScreenValue("4")),
            const ButtonsSpacer(),
            CircularButton(
                symbol: "5",
                borderColor: themeColor,
                onPressed: () => calculatorController.updateScreenValue("5")),
            const ButtonsSpacer(),
            CircularButton(
                symbol: "6",
                borderColor: themeColor,
                onPressed: () => calculatorController.updateScreenValue("6")),
            const ButtonsSpacer(),
            CircularButton(
                symbol: "-",
                borderColor: themeColor,
                onPressed: () => calculatorController.updateScreenValue("-")),
            const ButtonsSpacer(),
          ],
        ),
        SizedBox(height: 3.h),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    CircularButton(
                        symbol: "3",
                        borderColor: themeColor,
                        onPressed: () =>
                            calculatorController.updateScreenValue("3")),
                    const ButtonsSpacer(),
                    CircularButton(
                        symbol: "2",
                        borderColor: themeColor,
                        onPressed: () =>
                            calculatorController.updateScreenValue("2")),
                    const ButtonsSpacer(),
                    CircularButton(
                        symbol: "1",
                        borderColor: themeColor,
                        onPressed: () =>
                            calculatorController.updateScreenValue("1")),
                    const ButtonsSpacer(),
                  ],
                ),
                SizedBox(height: 3.h),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    CircularButton(
                        symbol: "0",
                        borderColor: themeColor,
                        onPressed: () =>
                            calculatorController.updateScreenValue("0")),
                    const ButtonsSpacer(),
                    CircularButton(
                        symbol: ".",
                        borderColor: themeColor,
                        onPressed: () =>
                            calculatorController.updateScreenValue(".")),
                    const ButtonsSpacer(),
                    CircularButton(
                        symbol: "C",
                        borderColor: themeColor,
                        onPressed: () =>
                            calculatorController.clearScreenValue()),
                    const ButtonsSpacer(),
                  ],
                ),
              ],
            ),
            OvalButton(
                symbol: "=",
                borderColor: themeColor,
                isVertical: true,
                onPressed: () => calculatorController.evaluateScreenValue()),
            const ButtonsSpacer(),
          ],
        ),
      ],
    );
  }
}

class ButtonsSpacer extends StatelessWidget {
  const ButtonsSpacer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(width: 2.9.w);
  }
}
