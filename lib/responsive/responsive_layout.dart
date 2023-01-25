import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class ResponsiveLyaout extends StatelessWidget {
  // const ResponsiveLyaout({super.key});
  final Widget mobileScaffold;
  final Widget tabletScaffold;
  final Widget desktopScaffold;

  ResponsiveLyaout(
      {required this.mobileScaffold,
      required this.tabletScaffold,
      required this.desktopScaffold});
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      if (constraints.maxWidth < 500) {
        return mobileScaffold;
      } else if (constraints.maxWidth < 1100) {
        return tabletScaffold;
      } else {
        return desktopScaffold;
      }
    });
  }
}
