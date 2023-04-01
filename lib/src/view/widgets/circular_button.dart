import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class CircularButton extends StatelessWidget {
  const CircularButton({
    super.key,
    required this.symbol,
    this.onPressed,
  });

  final String symbol;
  final void Function()? onPressed;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 10.h,
      width: 10.h,
      child: ElevatedButton(
        style: ButtonStyle(
          backgroundColor: const MaterialStatePropertyAll(Colors.grey),
          shape: MaterialStatePropertyAll(CircleBorder(
              side: BorderSide(width: 1.h, color: Colors.black38))),
        ),
        onPressed: onPressed,
        child: Text(symbol, style: TextStyle(fontSize: 3.h)),
      ),
    );
  }
}
