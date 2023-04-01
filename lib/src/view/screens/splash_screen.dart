import 'dart:async';

import 'package:calculatrix/src/core/constants/calculatrix_colors.dart';
import 'package:calculatrix/src/view/widgets/rectangular_container.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    if (mounted) {
      Timer(const Duration(seconds: 3), () => context.replaceNamed("home"));
    }
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
        backgroundColor: CalculatrixColors.kBackgroundSecondary,
        body: SafeArea(
          child: Padding(
            padding: EdgeInsets.all(20.0),
            child: Center(
              child: RectangularContainer(value: "Calculatrix"),
            ),
          ),
        ));
  }
}
