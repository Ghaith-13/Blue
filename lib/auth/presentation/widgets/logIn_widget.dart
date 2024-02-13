// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:intl_phone_field/intl_phone_field.dart';
import 'package:task/auth/presentation/pages/pin_screen.dart';
import 'package:task/core/utils/app_constants.dart';

import '../../../core/utils/app_colors.dart';

class CustomAppBarForLogIn extends StatelessWidget {
  const CustomAppBarForLogIn({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const Icon(
          Icons.close,
          color: AppColors.primaryColor,
        ),
        Expanded(
          child: Padding(
            padding: EdgeInsets.only(right: 30.w),
            child: Center(
              child: Text(
                "LogIn",
                style: TextStyle(
                    color: AppColors.primaryColor,
                    fontWeight: FontWeight.w600,
                    fontSize: 14.67.sp),
              ),
            ),
          ),
        )
      ],
    );
  }
}

class WelcomeWidget extends StatelessWidget {
  const WelcomeWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          "Welcome Back !",
          style: TextStyle(
              color: AppColors.secondryColor,
              fontWeight: FontWeight.w800,
              fontSize: 45.sp),
        ),
        SizedBox(
          height: 20.h,
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 60.w),
          child: Text(
            "enter your phone number to login or use your biometric login",
            textAlign: TextAlign.center,
            style: TextStyle(
                color: const Color.fromRGBO(62, 62, 62, 1),
                fontSize: 15.sp,
                fontWeight: FontWeight.w400),
          ),
        )
      ],
    );
  }
}

class PhoneNumberInputWidget extends StatelessWidget {
  const PhoneNumberInputWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: const BorderRadius.all(Radius.circular(10.0)),
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.5),
            offset: const Offset(0, 3),
            blurRadius: 5,
          ),
        ],
      ),
      child: IntlPhoneField(
        textAlign: TextAlign.right,
        initialCountryCode: 'LB',
        decoration: InputDecoration(
          focusedBorder: InputBorder.none,
          fillColor: Colors.white,
          filled: true,
          border: OutlineInputBorder(
              borderSide: BorderSide.none,
              borderRadius: BorderRadius.all(Radius.circular(10.0.sp))),
        ),
      ),
    );
  }
}

class LogInButton extends StatelessWidget {
  const LogInButton({super.key});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        AppConstants.customNavigation(context, const PinScreen(), -1, 0);
      },
      style: ElevatedButton.styleFrom(
        backgroundColor: Colors.white,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10.0),
        ),
        shadowColor: Colors.grey.withOpacity(0.5),
        elevation: 4,
      ),
      child: Padding(
        padding: EdgeInsets.symmetric(vertical: 25.h),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Text(
              'Biometric login',
              style: TextStyle(
                  color: const Color.fromRGBO(44, 41, 72, 1),
                  fontSize: 15.sp,
                  fontWeight: FontWeight.w700),
            ),
          ],
        ),
      ),
    );
  }
}

class Footer extends StatelessWidget {
  const Footer({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        const Divider(
          thickness: 2,
        ),
        Text(
          "Don’t have an account? - Sign Up",
          style: TextStyle(
              fontWeight: FontWeight.w600,
              fontSize: 12.67.sp,
              color: const Color.fromRGBO(62, 62, 62, 1)),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: EdgeInsets.only(left: 100.w),
              child: SizedBox(
                width: 40.w,
                child: const Divider(
                    thickness: 2, color: Color.fromRGBO(62, 62, 62, 1)),
              ),
            )
          ],
        )
      ],
    );
  }
}
