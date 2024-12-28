import 'dart:developer';

import 'package:flutter/material.dart';

import '../dashboard_disk_tab.dart';
import 'custom_drawer.dart';
import 'custom_text_soon.dart';
import 'index.dart';
import 'sign_in_button.dart';
import 'sign_up_button.dart';

class DisktopTabletLayout extends StatefulWidget {
  const DisktopTabletLayout({
    super.key,
    required this.width,
    required this.tabletLayout,
    required this.flex,
  });

  final double width;
  final bool tabletLayout;
  final int flex;

  @override
  State<DisktopTabletLayout> createState() => _DisktopTabletLayoutState();
}

class _DisktopTabletLayoutState extends State<DisktopTabletLayout> {
  // int index = 1;
  void _onItemSelected(int selectedIndex) {
    log(selectedIndex.toString());
    setState(() {
      index = selectedIndex;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF4F4F4),
      body: Row(
        // crossAxisAlignment: CrossAxisAlignment.center,
        // index != 1 ? CrossAxisAlignment.center : CrossAxisAlignment.start,
        children: [
          widget.tabletLayout
              ? Expanded(
                  child: CustomDrawer(
                  tabletLayout: widget.tabletLayout,
                  responsive: true,
                  index: index,
                  onItemSelected: _onItemSelected,
                ))
              : SizedBox(
                  height: MediaQuery.sizeOf(context).height,
                  child: CustomDrawer(
                    tabletLayout: false,
                    responsive: true,
                    index: index,
                    onItemSelected: _onItemSelected,
                  )),
          Expanded(
            flex: widget.flex,
            child: CustomScrollView(slivers: [
              const SliverAppBar(
                pinned: true,
                // expandedHeight: 80.0,
                toolbarHeight: 80,
                backgroundColor: Colors.white,
                surfaceTintColor: Colors.white,
                elevation: 0,
                actions: [SignInButton(), SignUpButton()],
              ),
              SliverList(
                delegate: SliverChildListDelegate(
                  [
                    Builder(
                      builder: (context) {
                        if (index == 1) {
                          return DashboardDiskTab(width: widget.width);
                        } else {
                          return const CustomTextSoon();
                        }
                        // switch (index) {
                        //   case 1:
                        //     return DashboardDiskTab(width: widget.width);
                        //   // case 2:
                        //   //   return const Center(child: Text('2'));
                        //   case 3:
                        //     return const CustomTextSoon();
                        //   case 4:
                        //     return const Center(child: Text('4'));
                        //   case 5:
                        //     return const Center(child: Text('5'));
                        //   // case 6:
                        //   //   return const Center(child: Text('6'));
                        //   case 7:
                        //     return const Center(child: Text('7'));
                        //   case 8:
                        //     return const Center(child: Text('8'));
                        //   case 9:
                        //     return const Center(child: Text('9'));
                        //   // case 10:
                        //   //   return const Center(child: Text('10'));
                        //   case 11:
                        //     return const Center(child: Text('11'));
                        //   case 12:
                        //     return const Center(child: Text('12'));
                        //   case 13:
                        //     return const Center(child: Text('13'));
                        //   case 14:
                        //     return const Center(child: Text('14'));
                        //   case 15:
                        //     return const Center(child: Text('15'));
                        //   default:
                        //     return DashboardDiskTab(width: widget.width);
                        // }
                      },
                    ),

                    // index == 1
                    //     ? DashboardDiskTab(width: widget.width)
                    //     : index == 3
                    //         ? const Center(child: Text('Cart'))
                    //         : const Center(child: Text('Home')),
                  ],
                ),
              ),
            ]),
          ),
        ],
      ),
    );
  }
}
