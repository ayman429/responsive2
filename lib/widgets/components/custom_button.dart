import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({
    super.key,
    required this.title,
    required this.isActive,
    this.icon,
  });
  final String title;
  final bool isActive;
  final IconData? icon;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {},
      style: ElevatedButton.styleFrom(
        // padding: const EdgeInsets.all(10),
        backgroundColor: Colors.white,
        surfaceTintColor: Colors.white,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(7),
        ),
        side: const BorderSide(
          color: Color(0xFFEFEFEF),
          width: 1,
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 12),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            isActive
                ? Flexible(
                    child: FittedBox(
                      fit: BoxFit.scaleDown,
                      child: Icon(
                        size: 20,
                        icon,
                        color: const Color(0xFF6F767E),
                      ),
                    ),
                  )
                : Container(),
            isActive ? const SizedBox(width: 10) : Container(),
            isActive
                ? MediaQuery.sizeOf(context).width < 600
                    ? Container()
                    : Text(
                        title,
                        style: const TextStyle(
                          fontSize: 17,
                          fontWeight: FontWeight.w500,
                          color: Colors.black,
                        ),
                      )
                : Text(
                    title,
                    style: const TextStyle(
                      fontSize: 17,
                      fontWeight: FontWeight.w500,
                      color: Colors.black,
                    ),
                  ),
          ],
        ),
      ),
    );
  }
}
