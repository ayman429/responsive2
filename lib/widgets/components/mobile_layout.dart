import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../dashboard_mobile.dart';

import 'custom_drawer.dart';
import 'custom_text_soon.dart';
import 'index.dart';
import 'sign_in_button.dart';
import 'sign_up_button.dart';

class MobileLayout extends StatefulWidget {
  const MobileLayout({
    super.key,
    required this.scaffoldKey,
    required this.width,
  });

  final GlobalKey<ScaffoldState> scaffoldKey;
  final double width;

  @override
  State<MobileLayout> createState() => _MobileLayoutState();
}

class _MobileLayoutState extends State<MobileLayout> {
  void _onItemSelected(int selectedIndex) {
    log(selectedIndex.toString());
    setState(() {
      index = selectedIndex;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: widget.scaffoldKey,
      backgroundColor: const Color(0xFFF4F4F4),
      drawer: CustomDrawer(
        tabletLayout: false,
        responsive: false,
        index: index,
        onItemSelected: _onItemSelected,
      ),
      appBar: AppBar(
        toolbarHeight: 80,
        elevation: 0,
        surfaceTintColor: Colors.white,
        backgroundColor: Colors.white,
        automaticallyImplyLeading: false,
        title: Row(
          children: [
            Flexible(
              child: IconButton(
                onPressed: () {
                  widget.scaffoldKey.currentState!.openDrawer();
                },
                icon: const Icon(
                  Icons.menu,
                  color: Color(0xFF6F767E),
                ),
              ),
            ),
            Flexible(
              child: IconButton(
                icon: const Icon(
                  FontAwesomeIcons.magnifyingGlass,
                  color: Color(0xFF6F767E),
                ),
                onPressed: () {},
              ),
            ),
          ],
        ),
        actions: const [SignInButton(), SignUpButton()],
      ),
      body: Builder(
        builder: (context) {
          if (index == 1) {
            return DashboardMobile(width: widget.width);
          } else {
            return const CustomTextSoon();
          }
          // switch (index) {
          //   case 1:
          //     return DashboardMobile(width: widget.width);
          //   // case 2:
          //   //   return const Center(child: Text('2'));
          //   case 3:
          //     return const Center(child: Text('3'));
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
          //     return DashboardMobile(width: widget.width);
          // }
        },
      ),

      // Builder(
      //   builder: (context) {
      //     return DashboardMobile(width: widget.width);
      //   },
      // ),
    );
  }
}
