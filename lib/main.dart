//main file
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:responsive_aap2/constent.dart';
import 'package:responsive_aap2/responsive_widget.dart';

import 'login_design.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      //light theme
      theme: ThemeData(
        textTheme: GoogleFonts.poppinsTextTheme(Theme.of(context).textTheme),
      ),
      home: Scaffold(
        backgroundColor: ResponsiveWidget.isMobile(context)?Constant.white:Constant.grey,
        body: SafeArea(
          child: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: ResponsiveWidget(
                mobile: LoginDesign(),
                laptop: Row(
                  children: [
                    Expanded(
                      flex: 10,
                      child: SvgPicture.asset(Constant.mainImage),
                    ),
                    Expanded(flex: 7, child: LoginDesign()),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
