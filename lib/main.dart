import 'package:flutter/material.dart';
import 'package:responsive_app/responsive/desktop_scaffold.dart';
import 'package:responsive_app/responsive/mobile_scaffold.dart';
import 'package:responsive_app/responsive/responsive_layout.dart';
import 'package:responsive_app/responsive/tablet_scaffold.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Responsive App',
      home: ResponsiveLyaout(
        mobileScaffold: const MobileScaffold(),
        tabletScaffold: const tabletScaffold(),
        desktopScaffold: const DesktopScaffold(),
      ),
    );
  }
}
