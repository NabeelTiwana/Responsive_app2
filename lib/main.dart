import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:responsive_aap2/constent.dart';

import 'button.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      //light theme
      theme: ThemeData(
        textTheme: GoogleFonts.poppinsTextTheme(Theme.of(context).textTheme),
      ),
      home: Scaffold(
        body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
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
                Button(
                  title: 'Login with Facebook',
                  icon: Constant.facebookIcon,
                ),
                SizedBox(height: Constant.spaceBtwSection,),
                Divider(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}


