import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TipsButton extends StatelessWidget {
  const TipsButton({
    super.key,
    required this.icon,
    required this.isActive,
  });

  final IconData icon;
  final bool isActive;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {},
      style: ElevatedButton.styleFrom(
        // padding: const EdgeInsets.all(10),
        backgroundColor: isActive ? const Color(0xFFEFEFEF) : Colors.white,
        surfaceTintColor: isActive ? const Color(0xFFEFEFEF) : Colors.white,
        shape: const CircleBorder(),
        side: const BorderSide(
          color: Color(0xFFEFEFEF),
          width: 1,
        ),
      ),
      child: FittedBox(
        fit: BoxFit.scaleDown,
        child: Icon(
          size: 30,
          icon,
          color: const Color(0xFF6F767E),
        ),
      ),
    );
  }
}
