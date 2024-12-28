// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'core/adaptive_layout_widget.dart';
import 'widgets/comments.dart';
import 'widgets/components/custom_drewer.dart';
import 'widgets/customers.dart';
import 'widgets/popular_products.dart';
import 'widgets/pro_tips.dart';
import 'widgets/refund_requests.dart';

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
        return Scaffold(
          key: scaffoldKey,
          backgroundColor: const Color(0xFFF4F4F4),
          drawer: const CustomDrewer(
            tabletLayout: false,
            responsive: false,
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
                      scaffoldKey.currentState!.openDrawer();
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
            actions: [
              Padding(
                padding: const EdgeInsetsDirectional.only(end: 20),
                child: TextButton(
                  style: ButtonStyle(
                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                      RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(7),
                      ),
                    ),
                  ),
                  child: const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 5, vertical: 15),
                    child: Text(
                      "Sign In",
                      style: TextStyle(
                        color: Color(0xFF272B30),
                        fontSize: 14,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  onPressed: () {},
                ),
              ),
              Padding(
                padding: const EdgeInsetsDirectional.only(end: 20),
                child: ElevatedButton(
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all<Color>(
                        const Color(0xFF2A85FF)),
                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                      RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(7),
                      ),
                    ),
                  ),
                  child: Padding(
                    padding:
                        const EdgeInsets.symmetric(horizontal: 5, vertical: 15),
                    child: Text(
                      "Sign Up",
                      style: TextStyle(
                        color: Colors.white.withOpacity(.95),
                        fontSize: 14,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  onPressed: () {},
                ),
              )
            ],
          ),
          body: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Padding(
                  padding: EdgeInsetsDirectional.only(start: 20, top: 20),
                  child: Text(
                    'Dashboard',
                    style: TextStyle(
                      fontSize: 32,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                ProTips(width: width, end: 20),
                Customers(width: width, end: 20),
                PopularProducts(width: width),
                Comments(width: width),
                RefundRequests(width: width),
              ],
            ),
          ),
        );
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

class DisktopTabletLayout extends StatelessWidget {
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
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF4F4F4),
      body: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          tabletLayout
              ? Expanded(
                  child: CustomDrewer(
                  tabletLayout: tabletLayout,
                  responsive: true,
                ))
              : SizedBox(
                  height: MediaQuery.sizeOf(context).height,
                  child: const CustomDrewer(
                    tabletLayout: false,
                    responsive: true,
                  )),
          Expanded(
            flex: flex,
            child: SingleChildScrollView(
              child: Column(
                // mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Padding(
                    padding: EdgeInsetsDirectional.only(start: 20, top: 20),
                    child: Text(
                      'Dashboard',
                      style: TextStyle(
                        fontSize: 32,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Expanded(
                        flex: 2,
                        child: IntrinsicWidth(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              ProTips(width: width),
                              Customers(width: width),
                            ],
                          ),
                        ),
                      ),
                      Expanded(
                        flex: 1,
                        child: IntrinsicWidth(
                          child: Column(
                            children: [
                              PopularProducts(width: width),
                              Comments(width: width),
                              RefundRequests(width: width),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
