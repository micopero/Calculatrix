import 'package:calculatrix/src/controllers/theme_controller.dart';
import 'package:calculatrix/src/view/widgets/bordered_container.dart';
import 'package:calculatrix/src/view/widgets/color_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class ThemeSettings extends ConsumerWidget {
  const ThemeSettings({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final themeController = ref.read(themeControllerProvider.notifier);

    return Center(
      child: BorderedContainer(
        child:
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
          ColorButton(
              color: Colors.blue,
              onPressed: () => themeController.updateThemeColor(Colors.blue)),
          ColorButton(
              color: Colors.red,
              onPressed: () => themeController.updateThemeColor(Colors.red)),
          ColorButton(
              color: Colors.green,
              onPressed: () => themeController.updateThemeColor(Colors.green)),
          ColorButton(
              color: Colors.grey,
              onPressed: () =>
                  themeController.updateThemeColor(Colors.black38)),
        ]),
      ),
    );
  }
}
