import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class RectangularContainer extends StatelessWidget {
  const RectangularContainer({
    super.key,
    this.value,
  });

  final String? value;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 15.h,
      width: 50.h,
      child: Container(
        decoration: const BoxDecoration(
          color: Colors.grey,
          borderRadius: BorderRadius.all(Radius.circular(20)),
          border: Border(
              top: BorderSide(width: 10, color: Colors.black38),
              right: BorderSide(width: 10, color: Colors.black38),
              left: BorderSide(width: 10, color: Colors.black38),
              bottom: BorderSide(width: 10, color: Colors.black38)),
        ),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child:
              Center(child: Text(value ?? "", style: TextStyle(fontSize: 3.h))),
        ),
      ),
    );
  }
}
