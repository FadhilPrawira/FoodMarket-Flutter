import 'package:flutter/material.dart';
import 'package:foodmarket_flutter/ui/intro/register_page.dart';

import '../../core/core.dart';
import '../home/pages/main_page.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    final emailController = TextEditingController();
    final passwordController = TextEditingController();

    return Scaffold(
      appBar: AppBar(
        title: const Padding(
          padding: EdgeInsets.all(24.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Login',
                style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.w500,
                  height: 1.5,
                  color: Color(0xff020202),
                ),
              ),
              Text(
                'Find your best ever meal',
                style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w300,
                  height: 1.5,
                  color: Color(0xff8D92A3),
                ),
              )
            ],
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(24.0),
          child: Column(
            children: [
              CustomTextField(
                controller: emailController,
                label: 'Email',
                hintText: 'Type your email address',
                isOutlineBorder: true,
              ),
              const SpaceHeight(16),
              CustomTextField(
                controller: passwordController,
                label: 'Password',
                hintText: 'Type your password',
                isOutlineBorder: true,
                obscureText: true,
              ),
              const SpaceHeight(24),
              Button.filled(
                onPressed: () {
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(builder: (context) => const MainPage()),
                  );
                },
                label: 'Sign In',
                fontSize: 14,
                lineHeightRatio: 1.5,
              ),
              const SpaceHeight(12),
              Button.filled(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const RegisterPage()),
                  );
                },
                label: 'Create New Account',
                color: const Color(0xff8D92A3),
                textColor: Colors.white,
                fontSize: 14,
                lineHeightRatio: 1.5,
              )
            ],
          ),
        ),
      ),
    );
  }
}
