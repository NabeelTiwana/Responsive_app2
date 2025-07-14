//My-Elevated Button
import 'package:flutter/material.dart';

//my-ElevatedButton
import 'constent.dart';

class MyElevatedButton extends StatelessWidget {
  const MyElevatedButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: ElevatedButton(
        onPressed: () {},
        style: ElevatedButton.styleFrom(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(
              Constant.borderRadius,
            ),
          ),
          backgroundColor: Constant.primaryColor,
          padding: EdgeInsets.symmetric(vertical: 16.0),
        ),
        child: Text('Login', style: TextStyle(color: Constant.white)),
      ),
    );
  }
}
