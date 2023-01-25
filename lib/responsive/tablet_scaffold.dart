import 'package:flutter/material.dart';
import 'package:responsive_app/constants.dart';

class tabletScaffold extends StatefulWidget {
  const tabletScaffold({super.key});

  @override
  State<tabletScaffold> createState() => _tabletScaffoldState();
}

class _tabletScaffoldState extends State<tabletScaffold> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: myAppBar,
      backgroundColor: myDefaultBg,
      drawer: myDrawer,
    );
  }
}
