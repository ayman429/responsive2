import 'package:flutter/material.dart';

class HeaderComponent extends StatelessWidget {
  const HeaderComponent({
    super.key,
    required this.width,
    required this.color,
    required this.title,
  });

  final double width;
  final Color color;
  final String title;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          width: (width / 20) > 12 ? 12 : width / 20,
          height: 25,
          decoration: BoxDecoration(
            color: color,
            borderRadius: const BorderRadius.all(Radius.circular(3)),
          ),
        ),
        const SizedBox(width: 10),
        Expanded(
          child: Text(
            title,
            overflow: TextOverflow.ellipsis,
            maxLines: 2,
            style: const TextStyle(
                fontSize: 18, fontWeight: FontWeight.bold, color: Colors.black),
          ),
        ),
      ],
    );
  }
}
