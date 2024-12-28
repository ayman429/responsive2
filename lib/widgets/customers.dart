import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'components/custom_button.dart';
import 'components/header_component.dart';

class Customers extends StatelessWidget {
  const Customers({
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
            color: const Color(0xFFB1E5FC),
            title: "Get More Customers!",
          ),
          const SizedBox(height: 20),
          const Text(
            "50% of new customers explore products because the author sharing the work on the social medial network. Ganin your earnings right now!",
            overflow: TextOverflow.ellipsis,
            maxLines: 2,
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.bold,
              color: Color(0xFF787B7E),
            ),
          ),
          const SizedBox(height: 20),
          const Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Expanded(
                child: CustomButton(
                  title: "Facebook",
                  icon: FontAwesomeIcons.facebook,
                  isActive: true,
                ),
              ),
              SizedBox(width: 20),
              Expanded(
                child: CustomButton(
                  title: "Twitter",
                  icon: FontAwesomeIcons.twitter,
                  isActive: true,
                ),
              ),
              SizedBox(width: 20),
              Expanded(
                child: CustomButton(
                  title: "Instagram",
                  icon: FontAwesomeIcons.instagram,
                  isActive: true,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
