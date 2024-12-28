import 'package:flutter/material.dart';

import 'comments.dart';
import 'customers.dart';
import 'popular_products.dart';
import 'pro_tips.dart';
import 'refund_requests.dart';

class DashboardDiskTab extends StatelessWidget {
  const DashboardDiskTab({
    super.key,
    required this.width,
  });

  final double width;

  @override
  Widget build(BuildContext context) {
    return Column(
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
    );
  }
}
