//google facebook button
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import 'constent.dart';

class Button extends StatelessWidget {
  const Button({super.key, required this.title, required this.icon});

  final String title, icon;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: EdgeInsets.symmetric(vertical: Constant.spaceBtwItem),
      decoration: BoxDecoration(
        color: Constant.white,
        borderRadius: BorderRadius.circular(Constant.borderRadius),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withValues(alpha: 0.1),
            blurRadius: 2,
            spreadRadius: 2,
            offset: Offset(1, 1),
          ),
        ],
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        spacing: Constant.spaceBtwItem,
        children: [
          SvgPicture.asset(icon, width: 24.0,height: 24.0,),
          Text(title),
        ],
      ),
    );
  }
}
