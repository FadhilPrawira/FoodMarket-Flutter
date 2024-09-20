import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../core/core.dart';
import 'address_page.dart';

class RegisterPage extends StatelessWidget {
  const RegisterPage({super.key});

  @override
  Widget build(BuildContext context) {
    final nameController = TextEditingController();
    final emailController = TextEditingController();
    final passwordController = TextEditingController();
    bool isPhotoExist = false;

    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(
            Icons.chevron_left,
            size: 24,
          ),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        title: const Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Sign Up',
              style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.w500,
                height: 1.5,
                color: Color(0xff020202),
              ),
            ),
            Text(
              'Register and eat',
              style: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.w300,
                height: 1.5,
                color: Color(0xff8D92A3),
              ),
            ),
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(24),
              child: Column(
                children: [
                  // Profile Picture
                  SizedBox(
                    width: 110,
                    height: 110,
                    child: Stack(
                      alignment: Alignment.center,
                      children: [
                        Assets.icons.icDottedBorderPhoto.svg(
                          width: 110,
                          height: 110,
                        ),
                        isPhotoExist
                            ? ClipOval(
                                child: Image.asset(
                                  Assets.images.imgProfile.path,
                                  fit: BoxFit.cover,
                                  width: 90,
                                  height: 90,
                                ),
                              )
                            : Container(
                                width: 90,
                                height: 90,
                                decoration: const BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: Color(0xffF0F0F0),
                                ),
                                child: Center(
                                  child: Text(
                                    'Add Photo',
                                    style: GoogleFonts.poppins(
                                      color: const Color(0xff8D92A3),
                                      fontSize: 14,
                                      fontWeight: FontWeight.w300,
                                      height: 1.5,
                                    ),
                                  ),
                                ),
                              ),
                      ],
                    ),
                  ),
                  const SpaceHeight(16),
                  CustomTextField(
                    controller: nameController,
                    label: 'Full Name',
                    hintText: 'Type your full name',
                    isOutlineBorder: true,
                  ),
                  const SpaceHeight(16),
                  CustomTextField(
                    controller: emailController,
                    label: 'Email Address',
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
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const AddressPage()),
                      );
                    },
                    label: 'Continue',
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
