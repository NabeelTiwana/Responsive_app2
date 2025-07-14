//my-TextFeild
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import 'constent.dart';

class MyTextField extends StatelessWidget {
  const MyTextField({
    super.key,
    required this.label,
    required this.icon,
    this.suffixIcon,
  });

  final String label, icon;
  final Widget? suffixIcon;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 4.0, horizontal: 8.0),
      decoration: BoxDecoration(
        color: Constant.grey,
        borderRadius: BorderRadius.circular(Constant.borderRadius),
      ),
      child: TextFormField(
        style: TextStyle(fontSize: 14.0, fontWeight: FontWeight.bold),
        decoration: InputDecoration(
          contentPadding: EdgeInsets.symmetric(vertical: 8.0),
          labelText: label,
          prefixIcon: Padding(
            padding: const EdgeInsets.all(10.0),
            child: SvgPicture.asset(icon,width: 12.0),
          ),
          suffixIcon: suffixIcon,
          //borders
          border: InputBorder.none,
          enabledBorder: InputBorder.none,
          disabledBorder: InputBorder.none,
          focusedBorder: InputBorder.none,
          focusedErrorBorder: InputBorder.none,
          errorBorder: InputBorder.none,
        ),
      ),
    );
  }
}
