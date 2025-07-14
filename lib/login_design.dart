//Loginfile mobile view
import 'package:flutter/material.dart' hide Divider;
import 'package:responsive_aap2/responsive_widget.dart';

import 'button.dart';
import 'constent.dart';
import 'divider.dart';
import 'my_elevated_button.dart';
import 'my_textfield.dart';

class LoginDesign extends StatelessWidget {
  const LoginDesign({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(ResponsiveWidget.isMobile(context)? 0.0:46.0),
      decoration: BoxDecoration(
        color: Constant.white,
        borderRadius: BorderRadius.circular(Constant.borderRadius),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          //title
          Text('Welcome to', style: TextStyle(fontSize: 30)),
          //subtitle
          Text(
            'Design School ',
            style: TextStyle(
              fontSize: 30,
              color: Constant.primaryColor,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(height: Constant.spaceBtwSection),
          //google Button
          Button(title: 'Login with Google', icon: Constant.googleIcon),
          SizedBox(height: Constant.spaceBtwItem),
          //facebook button
          Button(title: 'Login with Facebook', icon: Constant.facebookIcon),
          SizedBox(height: Constant.spaceBtwSection),
          //Divider
          MyDivider(),
          SizedBox(height: Constant.spaceBtwSection),
          //Email TextFormField
          MyTextField(label: 'Email', icon: Constant.emailIcon),
          SizedBox(height: Constant.spaceBtwFields),
          //Password TextFormField
          MyTextField(
            label: 'Password',
            icon: Constant.passwordIcon,
            suffixIcon: Icon(Icons.remove_red_eye),
          ),
          //Forgot Password
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              //Checkbox
              Row(
                children: [
                  Checkbox(
                    value: false,
                    onChanged: (value) {},
                    side: BorderSide(color: Constant.darkGrey),
                    fillColor: WidgetStatePropertyAll(Constant.grey),
                  ),
                  Text('Remember me'),
                ],
              ),

              Text(
                'Forgot Password?',
                style: TextStyle(color: Constant.primaryColor),
              ),
            ],
          ),
          SizedBox(height: Constant.spaceBtwSection),
          //Login Button
          MyElevatedButton(),
          SizedBox(height: Constant.spaceBtwSection),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('Don\'t have account? '),
              Text('Register', style: TextStyle(color: Constant.primaryColor)),
            ],
          ),
        ],
      ),
    );
  }
}
