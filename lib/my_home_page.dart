// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

import 'core/adaptive_layout_widget.dart';

import 'widgets/components/disktop_tablet_layout.dart';
import 'widgets/components/mobile_layout.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.sizeOf(context).width;

    return AdaptiveLayout(
      mobileLayout: (context) {
        return MobileLayout(scaffoldKey: scaffoldKey, width: width);
      },
      tabletLayout: (context) {
        return DisktopTabletLayout(
          width: width,
          flex: 10,
          tabletLayout: true,
        );
      },
      desktopLayout: (context) {
        return DisktopTabletLayout(
          width: width,
          flex: 1,
          tabletLayout: false,
        );
      },
    );
  }
}
