import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class CircularButton extends StatelessWidget {
  const CircularButton({
    super.key,
    required this.symbol,
    this.onPressed,
    this.borderColor = Colors.black38,
  });

  final String symbol;
  final Color borderColor;
  final void Function()? onPressed;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 10.h,
      width: 10.h,
      child: ElevatedButton(
        style: ButtonStyle(
          backgroundColor: const MaterialStatePropertyAll(Colors.grey),
          shape: MaterialStatePropertyAll(
              CircleBorder(side: BorderSide(width: 1.h, color: borderColor))),
        ),
        onPressed: onPressed,
        child: Text(symbol, style: TextStyle(fontSize: 3.h)),
      ),
    );
  }
}
