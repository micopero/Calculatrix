import 'package:calculatrix/src/core/navigation/calculatrix_router.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class Calculatrix extends StatelessWidget {
  const Calculatrix({super.key});

  @override
  Widget build(BuildContext context) {
    return Sizer(builder: (context, orientation, deviceType) {
      return MaterialApp.router(
        title: 'Calculatrix',
        routerConfig: CalculatrixRouter().router,
      );
    });
  }
}
