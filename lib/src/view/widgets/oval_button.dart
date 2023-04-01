import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class OvalButton extends StatelessWidget {
  const OvalButton({
    super.key,
    required this.symbol,
    this.isVertical = false,
    this.onPressed,
  });

  final String symbol;
  final bool isVertical;
  final void Function()? onPressed;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: isVertical ? 23.h : 10.h,
      width: isVertical ? 10.h : 23.h,
      child: ElevatedButton(
        style: ButtonStyle(
          backgroundColor: const MaterialStatePropertyAll(Colors.grey),
          shape: MaterialStatePropertyAll(StadiumBorder(
              side: BorderSide(width: 1.h, color: Colors.black38))),
        ),
        onPressed: onPressed,
        child: Text(symbol, style: TextStyle(fontSize: 3.h)),
      ),
    );
  }
}
