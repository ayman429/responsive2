import 'package:flutter/material.dart';

import 'components/custom_button.dart';
import 'components/header_component.dart';

class PopularProducts extends StatelessWidget {
  const PopularProducts({
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
              color: const Color(0xFFCABDFF),
              title: "Popular Products"),
          // const SizedBox(height: 20),
          const SizedBox(
            height: 40,
            child: ListTile(
              contentPadding: EdgeInsets.all(0),
              title: Text(
                "Products",
                overflow: TextOverflow.ellipsis,
                maxLines: 1,
                style: TextStyle(
                  fontSize: 12,
                  fontWeight: FontWeight.w700,
                  color: Color(0xFF787B7E),
                ),
              ),
              trailing: Text(
                "Earning",
                overflow: TextOverflow.ellipsis,
                maxLines: 1,
                style: TextStyle(
                  fontSize: 12,
                  fontWeight: FontWeight.w700,
                  color: Color(0xFF787B7E),
                ),
              ),
            ),
          ),

          const Divider(
            color: Color(0xFFEFEFEF),
            thickness: 1,
          ),
          // Padding(
          //   padding: const EdgeInsets.only(top: 20),
          //   child: ProductRow(
          //     width: width,
          //     title: "Crypter - NFT UI Kit icon",
          //     price: "\$2,453.80",
          //     isActive: "Active",
          //     textColor: Colors.green,
          //     contColor: const Color(0xFFF1F1F0),
          //   ),
          // ),

          // Padding(
          //   padding: const EdgeInsets.only(top: 20),
          //   child: ProductRow(
          //     width: width,
          //     title: "Crypter - NFT UI Kit icon",
          //     price: "\$2,453.80",
          //     isActive: "Deactive",
          //     textColor: Colors.red,
          //     contColor: const Color(0xFFFEE9EE),
          //   ),
          // ),

          for (var i = 0; i < 4; i++)
            Padding(
              padding: const EdgeInsets.only(top: 20),
              child: ProductRow(
                width: width,
                title: "Crypter - NFT UI Kit icon",
                price: "\$2,453.80",
                isActive: i == 1 ? "Deactive" : "Active",
                textColor: i == 1 ? Colors.red : Colors.green,
                contColor:
                    i == 1 ? const Color(0xFFFEE9EE) : const Color(0xFFF1F1F0),
              ),
            ),
          const SizedBox(height: 20),
          const CustomButton(
            title: "All Products",
            isActive: false,
          ),
        ],
      ),
    );
  }
}

class ProductRow extends StatelessWidget {
  const ProductRow({
    super.key,
    required this.width,
    required this.title,
    required this.price,
    required this.isActive,
    required this.textColor,
    required this.contColor,
  });

  final double width;
  final String title;
  final String price;
  final String isActive;
  final Color textColor;
  final Color contColor;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          width: (width / 5) > 60 ? 60 : (width / 5),
          height: 65,
          decoration: const BoxDecoration(
            color: Color(0xFFEFEFEF),
            borderRadius: BorderRadius.all(Radius.circular(10)),
          ),
        ),
        const SizedBox(width: 10),
        Expanded(
          child: Text(
            title,
            overflow: TextOverflow.ellipsis,
            maxLines: 2,
            style: const TextStyle(
              fontSize: 15,
              fontWeight: FontWeight.w600,
            ),
          ),
        ),
        Column(
          children: [
            Text(
              price,
              overflow: TextOverflow.ellipsis,
              maxLines: 1,
              style: const TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w600,
              ),
            ),
            const SizedBox(height: 5),
            Container(
              decoration: BoxDecoration(
                color: contColor,
                borderRadius: const BorderRadius.all(Radius.circular(7)),
              ),
              child: Center(
                child: Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 12, vertical: 5),
                  child: Text(
                    isActive,
                    style: TextStyle(
                      fontSize: 13,
                      fontWeight: FontWeight.w700,
                      color: textColor,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
