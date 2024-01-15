import 'package:flutter/material.dart';
import 'package:flutter_getx/constants/colors.dart';

class AuthLoginScreen extends StatefulWidget {
  const AuthLoginScreen({super.key});

  @override
  State<AuthLoginScreen> createState() => _AuthLoginScreenState();
}

class _AuthLoginScreenState extends State<AuthLoginScreen> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: grayColor,
      body: Center(
        child: Text('Login Screen'),
      ),
    );
  }
}
