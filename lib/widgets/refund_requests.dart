import 'package:flutter/material.dart';

import 'components/custom_button.dart';
import 'components/header_component.dart';

class RefundRequests extends StatelessWidget {
  const RefundRequests({
    super.key,
    required this.width,
  });

  final double width;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsetsDirectional.only(
          end: 20, start: 20, top: 20, bottom: 20),
      padding: const EdgeInsets.all(20),
      width: width,
      decoration: const BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.all(Radius.circular(10)),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          HeaderComponent(
            width: width,
            color: const Color(0xFFFFBC99),
            title: "Refund Requests",
          ),
          const SizedBox(height: 30),
          const Row(
            children: [
              CircleAvatar(
                radius: 25,
                backgroundColor: Color(0xFFFFE7E4),
                child: FittedBox(
                  fit: BoxFit.scaleDown,
                  child: Icon(
                    Icons.home,
                    color: Color(0xFFFF6A55),
                  ),
                ),
              ),
              SizedBox(width: 30),
              Expanded(
                child: Text(
                    "You have 52 open refund requests to zction. This includes 8 new requests.",
                    overflow: TextOverflow.ellipsis,
                    maxLines: 3,
                    style:
                        TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
              ),
            ],
          ),
          const SizedBox(height: 25),
          const CustomButton(
            title: "Review refund requests",
            isActive: false,
          )
        ],
      ),
    );
  }
}
