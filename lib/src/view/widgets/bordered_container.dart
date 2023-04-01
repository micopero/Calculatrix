import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class BorderedContainer extends StatelessWidget {
  const BorderedContainer({
    super.key,
    this.child,
    this.borderColor = Colors.black38,
  });

  final Widget? child;
  final Color borderColor;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 10.h,
      width: 50.h,
      child: Container(
        decoration: BoxDecoration(
          borderRadius: const BorderRadius.all(Radius.circular(20)),
          border: Border(
              top: BorderSide(width: 10, color: borderColor),
              right: BorderSide(width: 10, color: borderColor),
              left: BorderSide(width: 10, color: borderColor),
              bottom: BorderSide(width: 10, color: borderColor)),
        ),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Center(
            child: child,
          ),
        ),
      ),
    );
  }
}
