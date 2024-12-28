import 'package:flutter/material.dart';

class CustomIcon extends StatelessWidget {
  const CustomIcon({
    super.key,
    required this.icon,
  });
  final IconData icon;
  @override
  Widget build(BuildContext context) {
    return Flexible(
      child: FittedBox(
        fit: BoxFit.scaleDown,
        child: IconButton(
          onPressed: () {},
          icon: Icon(
            icon,
            color: Colors.grey,
          ),
        ),
      ),
    );
  }
}
