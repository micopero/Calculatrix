import 'package:calculatrix/src/controllers/calculator_controller.dart';
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

    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      mainAxisSize: MainAxisSize.min,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CircularButton(
                symbol: "7",
                onPressed: () => calculatorController.updateScreenValue("7")),
            const ButtonsSpacer(),
            CircularButton(
                symbol: "8",
                onPressed: () => calculatorController.updateScreenValue("8")),
            const ButtonsSpacer(),
            CircularButton(
                symbol: "9",
                onPressed: () => calculatorController.updateScreenValue("9")),
            const ButtonsSpacer(),
            CircularButton(
                symbol: "+",
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
                onPressed: () => calculatorController.updateScreenValue("4")),
            const ButtonsSpacer(),
            CircularButton(
                symbol: "5",
                onPressed: () => calculatorController.updateScreenValue("5")),
            const ButtonsSpacer(),
            CircularButton(
                symbol: "6",
                onPressed: () => calculatorController.updateScreenValue("6")),
            const ButtonsSpacer(),
            CircularButton(
                symbol: "-",
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
                        onPressed: () =>
                            calculatorController.updateScreenValue("3")),
                    const ButtonsSpacer(),
                    CircularButton(
                        symbol: "2",
                        onPressed: () =>
                            calculatorController.updateScreenValue("2")),
                    const ButtonsSpacer(),
                    CircularButton(
                        symbol: "1",
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
                        onPressed: () =>
                            calculatorController.updateScreenValue("0")),
                    const ButtonsSpacer(),
                    CircularButton(
                        symbol: ".",
                        onPressed: () =>
                            calculatorController.updateScreenValue(".")),
                    const ButtonsSpacer(),
                    CircularButton(
                        symbol: "C",
                        onPressed: () =>
                            calculatorController.clearScreenValue()),
                    const ButtonsSpacer(),
                  ],
                ),
              ],
            ),
            OvalButton(
                symbol: "=",
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
