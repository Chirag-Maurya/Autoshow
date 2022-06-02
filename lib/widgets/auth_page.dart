import 'package:flutter/material.dart';
import 'package:my_sample/widgets/login_page.dart';
import 'package:my_sample/widgets/register_page.dart';

class AuthPage extends StatefulWidget {
  const AuthPage({Key? key}) : super(key: key);

  @override
  State<AuthPage> createState() => _AuthPageState();
}

class _AuthPageState extends State<AuthPage> {
  // initially show the registration page
  bool showLoginPage = false;

  void toggleScreens(){
    setState(() {
      showLoginPage = !showLoginPage;
    });
  }

  @override
  Widget build(BuildContext context) {
    if (showLoginPage) {
      return LoginPage(showRegisterPage: toggleScreens,);
    } else {
      return RegisterPage(showLoginPage: toggleScreens,);
    }
  }
}
