import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({
    super.key,
    required this.isActive,
  });
  final bool isActive;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Container(
            height: 47,
            padding: EdgeInsets.zero,
            decoration: const BoxDecoration(
              color: Color(0xFFF4F4F4),
              borderRadius: BorderRadius.all(
                Radius.circular(12),
              ),
            ),
            child: const TextField(
              maxLines: 1,
              decoration: InputDecoration(
                isDense: true, // Reduces internal padding
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                    width: 2,
                    color: Colors.blue,
                  ),
                  borderRadius: BorderRadius.all(
                    Radius.circular(12),
                  ),
                ),
                border: OutlineInputBorder(
                  borderSide: BorderSide.none,
                ),
                prefixIcon: Padding(
                  padding: EdgeInsetsDirectional.only(start: 20, end: 10),
                  child: Icon(Icons.search, size: 30, color: Color(0xFF9A9FA5)),
                ),
                hintText: 'Search',
                hintStyle: TextStyle(
                  color: Color(0xFF9A9FA5),
                  fontSize: 14,
                ),
              ),
            ),
          ),
        ),
        isActive ? const Spacer() : const SizedBox(),
      ],
    );
  }
}
