import 'package:flutter/cupertino.dart';

import 'constent.dart';

class Divider extends StatelessWidget {
  const Divider({
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