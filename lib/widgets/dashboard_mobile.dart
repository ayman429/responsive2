import 'package:flutter/material.dart';

import 'comments.dart';
import 'customers.dart';
import 'popular_products.dart';
import 'pro_tips.dart';
import 'refund_requests.dart';

class DashboardMobile extends StatelessWidget {
  const DashboardMobile({
    super.key,
    required this.width,
  });

  final double width;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
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
    );
  }
}
