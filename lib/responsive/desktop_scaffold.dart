import 'package:flutter/material.dart';
import 'package:responsive_app/constants.dart';
import 'package:responsive_app/utils/my_box.dart';
import 'package:responsive_app/utils/my_tile.dart';

class DesktopScaffold extends StatefulWidget {
  const DesktopScaffold({super.key});

  @override
  State<DesktopScaffold> createState() => _DesktopScaffoldState();
}

class _DesktopScaffoldState extends State<DesktopScaffold> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: myAppBar,
        backgroundColor: myDefaultBg,
        body: Row(
          children: [
            //openRow
            myDrawer,
            //Rest of Body
            Expanded(
              flex: 2,
              child: Column(
                children: [
                  //4 boxeesz
                  AspectRatio(
                    aspectRatio: 4,
                    child: SizedBox(
                      width: double.infinity,
                      child: GridView.builder(
                          itemCount: 4,
                          gridDelegate:
                              const SliverGridDelegateWithFixedCrossAxisCount(
                                  crossAxisCount: 4),
                          itemBuilder: (context, index) {
                            return const MyBox();
                          }),
                    ),
                  ),

                  //tiles

                  Expanded(
                    child: ListView.builder(
                      itemCount: 5,
                      itemBuilder: (context, index) {
                        return MyTile();
                      },
                    ),
                  )
                ],
              ),
            ),
            //Third column

            Expanded(
                child: Column(
              children: [
                Expanded(
                    child: Container(
                  color: Colors.pink,
                ))
              ],
            ))
          ],
        ));
  }
}
