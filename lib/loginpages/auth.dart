import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import '../loginpages/sigin.dart';
import '../loginpages/signup.dart';
import '../loginpages/signin_or_signup.dart';
import '../View/BottomNavigationBar/navBar.dart';

class Auth extends StatelessWidget {
  const Auth({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: StreamBuilder<User?>(
          stream: FirebaseAuth.instance.authStateChanges(),
          builder: ((context, snapshot) {
            // is user logged
            if (snapshot.hasData) {
              return NavBar();
            }

            // or NOT logged
            else {
              return SigniOrSignUp();
            }
          }),
        ),
      ),
    );
  }
}
