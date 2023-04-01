import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class ColorButton extends StatelessWidget {
  const ColorButton({
    super.key,
    this.onPressed,
    this.selected = false,
    required this.color,
  });

  final bool selected;
  final Color color;
  final void Function()? onPressed;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 10.h,
      width: 10.h,
      child: ElevatedButton(
        style: ButtonStyle(
          backgroundColor: MaterialStatePropertyAll(color),
          shape: MaterialStatePropertyAll(
            CircleBorder(
                side: selected
                    ? BorderSide(width: 1.h, color: Colors.white)
                    : const BorderSide()),
          ),
        ),
        onPressed: onPressed,
        child: Container(),
      ),
    );
  }
}
