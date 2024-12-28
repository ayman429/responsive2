import 'package:flutter/material.dart';

class CustomTextSoon extends StatelessWidget {
  const CustomTextSoon({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.sizeOf(context).height - 80,
      child: const Center(
        child: Text(
          'We are working on it. Soon it will be available.',
          style: TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
