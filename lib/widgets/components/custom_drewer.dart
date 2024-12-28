import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class CustomDrewer extends StatefulWidget {
  const CustomDrewer(
      {super.key, required this.responsive, required this.tabletLayout});
  final bool responsive;
  final bool tabletLayout;

  @override
  State<CustomDrewer> createState() => _CustomDrewerState();
}

class _CustomDrewerState extends State<CustomDrewer> {
  int isActive = 1;
  int expand = 0;
  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: const Color(0xFFFCFCFC),
      surfaceTintColor: const Color(0xFFFCFCFC),
      elevation: 0,
      shape: widget.responsive ? const BeveledRectangleBorder() : null,
      child: Column(
        children: [
          Row(
            children: [
              widget.responsive
                  ? const SizedBox()
                  : Padding(
                      padding:
                          const EdgeInsetsDirectional.only(start: 15, top: 20),
                      child: IconButton(
                        icon: const Icon(
                          Icons.close,
                          color: Color(0xFF6F767E),
                        ),
                        onPressed: () {
                          Navigator.of(context).pop();
                        },
                      ),
                    ),
              widget.responsive
                  ? const SizedBox(
                      width: 10,
                    )
                  : const Spacer(flex: 3),
              Flexible(
                child: FittedBox(
                  fit: BoxFit.scaleDown,
                  child: Padding(
                    padding: const EdgeInsetsDirectional.only(top: 20, end: 10),
                    child: Image.asset(
                      'assets/images/img1.png',
                      width: 80,
                      height: 70,
                    ),
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(height: 15),
          const Divider(color: Color(0xFFEFEFEF), thickness: 1),
          const SizedBox(height: 15),
          SizedBox(
            height: widget.responsive
                ? 400
                : MediaQuery.of(context).orientation == Orientation.landscape
                    ? 200
                    : 400,
            child: SingleChildScrollView(
              child: Column(
                children: [
                  customDrewerButton(
                    title: "Home",
                    icon: Icons.home,
                    index: 1,
                    expand: 0,
                    child: false,
                    onTap: () {
                      setState(() {
                        isActive = 1;
                        expand = 0;
                      });
                    },
                  ),
                  customDrewerButton(
                    title: "Products",
                    icon: Icons.diamond,
                    index: 2,
                    expand: expand,
                    child: false,
                    isIcon: true,
                    onTap: () {
                      if (widget.tabletLayout) {
                        setState(() {
                          isActive = 2;
                          expand = 0;
                        });
                      } else {
                        if (expand == 2) {
                          setState(() {
                            expand = 0;
                          });
                        } else {
                          setState(() {
                            setState(() {
                              isActive = isActive;
                              expand = 2;
                            });
                          });
                        }
                      }
                    },
                  ),
                  widget.tabletLayout
                      ? const SizedBox()
                      : expand == 2
                          ? Column(
                              children: [
                                customDrewerButton(
                                  title: "Dashpord",
                                  index: 3,
                                  child: true,
                                  expand: 0,
                                  onTap: () {
                                    setState(() {
                                      isActive = 3;
                                    });
                                  },
                                ),
                                customDrewerButton(
                                  title: "Draft",
                                  index: 4,
                                  expand: 0,
                                  child: true,
                                  onTap: () {
                                    setState(() {
                                      isActive = 4;
                                    });
                                  },
                                ),
                                customDrewerButton(
                                  title: "Add Product",
                                  index: 5,
                                  expand: 0,
                                  child: true,
                                  onTap: () {
                                    setState(() {
                                      isActive = 5;
                                    });
                                  },
                                ),
                              ],
                            )
                          : Container(),
                  customDrewerButton(
                    title: "Customers",
                    icon: FontAwesomeIcons.circleUser,
                    index: 6,
                    expand: expand,
                    child: false,
                    isIcon: true,
                    onTap: () {
                      if (widget.tabletLayout) {
                        setState(() {
                          isActive = 6;
                          expand = 0;
                        });
                      } else {
                        if (expand == 6) {
                          setState(() {
                            expand = 0;
                          });
                        } else {
                          setState(() {
                            setState(() {
                              isActive = isActive;
                              expand = 6;
                            });
                          });
                        }
                      }
                    },
                  ),
                  widget.tabletLayout
                      ? const SizedBox()
                      : expand == 6
                          ? Column(
                              children: [
                                customDrewerButton(
                                  title: "Overview",
                                  index: 7,
                                  child: true,
                                  expand: 0,
                                  onTap: () {
                                    setState(() {
                                      isActive = 7;
                                    });
                                  },
                                ),
                                customDrewerButton(
                                  title: "Customer List",
                                  index: 8,
                                  expand: 0,
                                  child: true,
                                  onTap: () {
                                    setState(() {
                                      isActive = 8;
                                    });
                                  },
                                ),
                              ],
                            )
                          : Container(),
                  customDrewerButton(
                    title: "Shop",
                    icon: Icons.storefront_rounded,
                    index: 9,
                    expand: 0,
                    child: false,
                    onTap: () {
                      setState(() {
                        isActive = 9;
                        expand = 0;
                      });
                    },
                  ),
                  customDrewerButton(
                    title: "Income",
                    icon: Icons.pie_chart_outline,
                    // FontAwesomeIcons.chartPie,
                    index: 10,
                    expand: expand,
                    child: false,
                    isIcon: true,
                    onTap: () {
                      if (widget.tabletLayout) {
                        setState(() {
                          isActive = 10;
                          expand = 0;
                        });
                      } else {
                        if (expand == 10) {
                          setState(() {
                            expand = 0;
                          });
                        } else {
                          setState(() {
                            setState(() {
                              isActive = isActive;
                              expand = 10;
                            });
                          });
                        }
                      }
                    },
                  ),
                  widget.tabletLayout
                      ? const SizedBox()
                      : expand == 10
                          ? Column(
                              children: [
                                customDrewerButton(
                                  title: "Earning",
                                  index: 11,
                                  child: true,
                                  expand: 0,
                                  onTap: () {
                                    setState(() {
                                      isActive = 11;
                                    });
                                  },
                                ),
                                customDrewerButton(
                                  title: "Refunds",
                                  index: 12,
                                  expand: 0,
                                  child: true,
                                  onTap: () {
                                    setState(() {
                                      isActive = 12;
                                    });
                                  },
                                ),
                                customDrewerButton(
                                  title: "Payouts",
                                  index: 13,
                                  expand: 0,
                                  child: true,
                                  onTap: () {
                                    setState(() {
                                      isActive = 13;
                                    });
                                  },
                                ),
                                customDrewerButton(
                                  title: "Statements",
                                  index: 14,
                                  expand: 0,
                                  child: true,
                                  onTap: () {
                                    setState(() {
                                      isActive = 14;
                                    });
                                  },
                                ),
                              ],
                            )
                          : Container(),
                  customDrewerButton(
                    title: "Promote",
                    icon: Icons.percent,
                    index: 15,
                    expand: 0,
                    child: false,
                    onTap: () {
                      setState(() {
                        isActive = 15;
                        expand = 0;
                      });
                    },
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }

  Widget customDrewerButton(
      {required void Function()? onTap,
      required String title,
      IconData? icon,
      required int index,
      required int expand,
      bool isIcon = false,
      required bool child}) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: child ? 40 : 15),
      child: InkWell(
        borderRadius: BorderRadius.circular(5),
        onTap: onTap,
        child: Container(
          decoration: isActive == index
              ? BoxDecoration(
                  color: const Color(0xFFEFEFEF),
                  borderRadius: BorderRadius.circular(5),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.5),
                      spreadRadius: 0,
                      blurRadius: 1,
                      offset: const Offset(0, 1),
                    )
                  ],
                )
              : null,
          child: widget.tabletLayout
              ? Padding(
                  padding: const EdgeInsets.all(10),
                  child: Icon(
                    icon,
                    color: isActive == index
                        ? Colors.black
                        : const Color(0xFF6F767E),
                  ),
                )
              : ListTile(
                  minLeadingWidth: 0,
                  trailing: isIcon
                      ? Transform.rotate(
                          angle: expand == index
                              ? (90 * 3.14 / 180)
                              : (-90 * 3.14 / 180),
                          child: const Icon(Icons.keyboard_arrow_left))
                      : index == 4 || index == 8
                          ? Container(
                              height: 25,
                              width: 30,
                              decoration: BoxDecoration(
                                color: const Color(0xFFB5E4CA),
                                borderRadius: BorderRadius.circular(5),
                              ),
                              child: const Center(
                                  child: Text("16",
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold))),
                            )
                          : const SizedBox(),
                  title: Text(
                    title,
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      color: isActive == index
                          ? Colors.black
                          : const Color(0xFF6F767E),
                    ),
                  ),
                  leading: child
                      ? const SizedBox(width: 0)
                      : Icon(
                          icon,
                          color: isActive == index
                              ? Colors.black
                              : const Color(0xFF6F767E),
                        ),
                ),
        ),
      ),
    );
  }
}
