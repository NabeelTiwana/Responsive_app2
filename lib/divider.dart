//Divider
import 'package:flutter/material.dart';

import 'constent.dart';

class MyDivider extends StatelessWidget {
  const MyDivider({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      spacing: Constant.spaceBtwItem,
      children: [
        Expanded(child: Divider()),
        Text('OR'),
        Expanded(child: Divider()),
      ],
    );
  }
}