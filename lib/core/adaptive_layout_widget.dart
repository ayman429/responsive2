import 'package:flutter/material.dart';

class AdaptiveLayout extends StatelessWidget {
  const AdaptiveLayout(
      {super.key,
      required this.mobileLayout,
      required this.tabletLayout,
      required this.desktopLayout});

  final WidgetBuilder mobileLayout, tabletLayout, desktopLayout;
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constrains) {
      if (constrains.maxWidth < 1050) {
        return mobileLayout(context);
      } else if (constrains.maxWidth < 1300) {
        return tabletLayout(context);
      } else {
        return desktopLayout(context);
      }
    });
  }
}
