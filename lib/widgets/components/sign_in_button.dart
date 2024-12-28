import 'package:flutter/material.dart';

class SignInButton extends StatelessWidget {
  const SignInButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsetsDirectional.only(end: 20),
      child: TextButton(
        style: ButtonStyle(
          padding: MaterialStateProperty.all<EdgeInsets>(
              const EdgeInsets.symmetric(horizontal: 10)),
          shape: MaterialStateProperty.all<RoundedRectangleBorder>(
            RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(7),
            ),
          ),
        ),
        child: const Padding(
          padding: EdgeInsets.symmetric(horizontal: 5, vertical: 13.5),
          child: Text(
            "Sign In",
            style: TextStyle(
              color: Color(0xFF272B30),
              fontSize: 14,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        onPressed: () {},
      ),
    );
  }
}
