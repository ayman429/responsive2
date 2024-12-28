// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'components/header_component.dart';
import 'components/tips_button.dart';

class ProTips extends StatelessWidget {
  const ProTips({
    super.key,
    required this.width,
    this.end,
  });

  final double width;
  final double? end;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsetsDirectional.only(start: 20, top: 20, end: end ?? 0),
      padding: const EdgeInsets.all(20),
      // width: width,
      decoration: const BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.all(Radius.circular(10)),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          HeaderComponent(
            width: width,
            color: const Color(0xFFB5E4CA),
            title: "Pro Tips",
          ),
          const SizedBox(height: 20),
          const Text(
            "Need some ideas for the next product?",
            overflow: TextOverflow.ellipsis,
            maxLines: 2,
            style: TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.w400,
              color: Color(0xFF787B7E),
            ),
          ),
          const SizedBox(height: 20),
          width > 570
              ? const Row(
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        TipsItem(
                            title: "Early access",
                            subtitle: "3 mins read",
                            icon: Icons.edit_calendar_outlined
                            // FontAwesomeIcons.calendarPlus,
                            ),
                        SizedBox(height: 30),
                        TipsItem(
                            title: "Exclusive downloads",
                            subtitle: "2 mins read",
                            icon: Icons.design_services_outlined),
                        SizedBox(height: 30),
                        TipsItem(
                            title: "Asset use guidelines",
                            subtitle: "1 mins read",
                            icon: Icons.phone_callback_outlined),
                      ],
                    ),
                    Spacer(
                        // flex: 3,
                        ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        TipsItem(
                            title: "Asset use guidelines",
                            subtitle: "Time",
                            isActive: true,
                            icon: FontAwesomeIcons.arrowRight),
                        SizedBox(height: 30),
                        TipsItem(
                            title: "Behind the scenes",
                            subtitle: "3 mins read",
                            icon: Icons.video_call_outlined),
                        SizedBox(height: 30),
                        TipsItem(
                            title: "Life & work updates",
                            subtitle: "3 mins read",
                            icon: Icons.check_box_outlined),
                      ],
                    ),
                    Spacer(
                        // flex: 3,
                        ),
                  ],
                )
              : const Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Column(
                      children: [
                        TipsItem(
                            title: "Early access",
                            subtitle: "3 mins read",
                            icon: Icons.edit_calendar_outlined
                            // FontAwesomeIcons.calendarPlus,
                            ),
                        SizedBox(height: 30),
                        TipsItem(
                            title: "Exclusive downloads",
                            subtitle: "2 mins read",
                            icon: Icons.design_services_outlined),
                        SizedBox(height: 30),
                        TipsItem(
                            title: "Asset use guidelines",
                            subtitle: "1 mins read",
                            icon: Icons.phone_callback_outlined),
                      ],
                    ),
                    SizedBox(height: 30),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        TipsItem(
                            title: "Asset use guidelines",
                            subtitle: "Time",
                            isActive: true,
                            icon: FontAwesomeIcons.arrowRight),
                        SizedBox(height: 30),
                        TipsItem(
                            title: "Behind the scenes",
                            subtitle: "3 mins read",
                            icon: Icons.video_call_outlined),
                        SizedBox(height: 30),
                        TipsItem(
                            title: "Life & work updates",
                            subtitle: "3 mins read",
                            icon: Icons.check_box_outlined),
                      ],
                    ),
                  ],
                ),
        ],
      ),
    );
  }
}

class TipsItem extends StatelessWidget {
  const TipsItem({
    super.key,
    required this.title,
    required this.subtitle,
    required this.icon,
    this.isActive,
  });
  final String title;
  final String subtitle;

  final IconData icon;

  final bool? isActive;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SizedBox(
          height: 60,
          width: 80,
          child: TipsButton(
            isActive: isActive ?? false,
            icon: icon,
          ),
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              title,
              overflow: TextOverflow.ellipsis,
              maxLines: 1,
              style: const TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.w600,
                // color: Color(0xFF787B7E),
              ),
            ),
            const SizedBox(height: 5),
            Row(
              children: [
                Container(
                  decoration: const BoxDecoration(
                    color: Color(0xFFCABDFF),
                    borderRadius: BorderRadius.all(Radius.circular(7)),
                  ),
                  child: const Center(
                    child: Padding(
                      padding:
                          EdgeInsets.symmetric(horizontal: 12, vertical: 5),
                      child: Text(
                        "New",
                        overflow: TextOverflow.ellipsis,
                        maxLines: 1,
                        style: TextStyle(
                          fontSize: 13,
                          fontWeight: FontWeight.w700,
                          // color: textColor,
                        ),
                      ),
                    ),
                  ),
                ),
                const SizedBox(width: 10),
                Container(
                  decoration: BoxDecoration(
                    // color: Color(0xFFCABDFF),
                    borderRadius: const BorderRadius.all(Radius.circular(7)),
                    border:
                        Border.all(width: 1, color: const Color(0xFFF6F6F6)),
                  ),
                  child: Center(
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 12, vertical: 5),
                      child: Text(
                        subtitle,
                        overflow: TextOverflow.ellipsis,
                        maxLines: 1,
                        style: const TextStyle(
                          fontSize: 13,
                          fontWeight: FontWeight.w700,
                          color: Color(0xFF8C9298),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ],
    );
  }
}
