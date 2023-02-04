import 'package:flutter/material.dart';
import '../loginpages/sigin.dart';
import '../loginpages/signup.dart';

class SigniOrSignUp extends StatefulWidget {
  const SigniOrSignUp({super.key});

  @override
  State<SigniOrSignUp> createState() => _SigniOrSignUpState();
}

class _SigniOrSignUpState extends State<SigniOrSignUp> {
  bool showLoginPage = true;

  void togglePages() {
    setState(() {
      showLoginPage = !showLoginPage;
    });
  }

  @override
  Widget build(BuildContext context) {
    if (showLoginPage) {
      return LoginPge(onTap: togglePages);
    } else
      return SigUpPage(
        onTap: togglePages,
      );
  }
}
