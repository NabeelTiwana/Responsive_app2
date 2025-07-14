// Responsive Widget
import 'package:flutter/cupertino.dart';

class ResponsiveWidget extends StatelessWidget {
  const ResponsiveWidget({
    super.key,
    required this.mobile,
    this.tablet,
    this.laptop,
    this.bigScreen,
  });

  final Widget mobile;
  final Widget? tablet;
  final Widget? laptop;
  final Widget? bigScreen;

  static bool isMobile(BuildContext context) =>
      MediaQuery.of(context).size.width < 500;

  static bool isTablet(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return width >= 600 && width < 1024;
  }

  static bool isBigScreen(BuildContext context) =>
      MediaQuery.of(context).size.width >= 1440;

  static double screenWidth(BuildContext context) =>
      MediaQuery.of(context).size.width;

  static double screenHeight(BuildContext context) =>
      MediaQuery.of(context).size.height;

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        double width = constraints.maxWidth;
        if (width >= 1440 && bigScreen != null) {
          return bigScreen!;
        } else if (width >= 1024 && laptop != null) {
          return laptop!;
        } else if (width >= 600 && tablet != null) {
          return tablet!;
        } else {
          return mobile;
        }
      },
    );
  }
}
