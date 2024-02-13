// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:task/auth/presentation/widgets/logIn_widget.dart';

class LigInScreen extends StatelessWidget {
  const LigInScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          width: 1.sw,
          height: 1.sh,
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage("assets/images/background.png"),
              fit: BoxFit.cover,
            ),
          ),
          child: SafeArea(
            child: Padding(
              padding: EdgeInsets.symmetric(vertical: 20.h, horizontal: 10.w),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    children: [
                      const CustomAppBarForLogIn(),
                      SizedBox(
                        height: 50.h,
                      ),
                      const WelcomeWidget(),
                      SizedBox(
                        height: 75.h,
                      ),
                      const PhoneNumberInputWidget(),
                      SizedBox(
                        height: 20.h,
                      ),
                      const LogInButton(),
                    ],
                  ),
                  const Footer(),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
