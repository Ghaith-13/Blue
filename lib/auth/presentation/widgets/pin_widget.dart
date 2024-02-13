import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pin_code_fields/pin_code_fields.dart';
import 'package:task/auth/presentation/pages/fingarId_screen.dart';
import 'package:task/core/utils/app_constants.dart';

import '../../../core/utils/app_colors.dart';

bool flag = false;

class PinFieldsWidget extends StatelessWidget {
  const PinFieldsWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: 60.h),
      child: Column(
        children: [
          Text(
            "Set your PIN",
            style: TextStyle(
                fontWeight: FontWeight.w700,
                fontSize: 26.sp,
                color: AppColors.secondryColor),
          ),
          SizedBox(
            height: 80.h,
          ),
          Text(
            "You will use this to access your account",
            style: TextStyle(
                fontSize: 17.sp,
                fontWeight: FontWeight.w400,
                color: const Color.fromRGBO(62, 62, 62, 1)),
          ),
          Padding(
            padding: EdgeInsets.only(
              top: 30.h,
              right: 30.w,
              left: 30.w,
            ),
            child: PinCodeTextField(
              keyboardType: TextInputType.number,
              appContext: context,
              length: 4,
              onChanged: (value) {},
              onCompleted: (value) {
                flag = true;
              },
              textStyle: TextStyle(
                  color: const Color.fromRGBO(17, 56, 132, 1),
                  fontSize: 40.sp,
                  fontWeight: FontWeight.w400),
              inputFormatters: [FilteringTextInputFormatter.digitsOnly],
              enableActiveFill: true,
              pinTheme: PinTheme(
                  disabledColor: Colors.white,
                  selectedFillColor: Colors.white,
                  activeFillColor: Colors.white,
                  inactiveFillColor: Colors.white,
                  fieldHeight: 76.h,
                  fieldWidth: 48.w,
                  shape: PinCodeFieldShape.box,
                  activeColor: const Color.fromRGBO(83, 133, 231, 1),
                  inactiveColor: const Color.fromRGBO(83, 133, 231, 1),
                  selectedColor: AppColors.primaryColor,
                  borderRadius: BorderRadius.circular(8.sp)),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 30.w),
            child: Row(
              children: [
                Text(
                  "never give or share your PIN with anyone",
                  style: TextStyle(
                      color: const Color.fromRGBO(62, 62, 62, 1),
                      fontWeight: FontWeight.w400,
                      fontSize: 12.sp),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 20.h,
          ),
          const SwitchWidget()
        ],
      ),
    );
  }
}

class SwitchWidget extends StatefulWidget {
  const SwitchWidget({super.key});

  @override
  State<SwitchWidget> createState() => _SwitchWidgetState();
}

class _SwitchWidgetState extends State<SwitchWidget> {
  bool _isToggled = false;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 30.w),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            "Remember me",
            style: TextStyle(
                color: AppColors.primaryColor,
                fontWeight: FontWeight.w600,
                fontSize: 16.sp),
          ),
          Switch(
            value: _isToggled,
            onChanged: (value) => setState(() => _isToggled = value),
            activeColor: AppColors.secondryColor,
            inactiveTrackColor: Colors.grey,
          ),
        ],
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
        ElevatedButton(
          onPressed: () {
            flag
                ? AppConstants.customNavigation(
                    context, const FingarIdScreen(), -1, 0)
                : {
                    ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
                        backgroundColor: Colors.red,
                        content: Text("Please insert PIN code"))),
                  };
          },
          style: ElevatedButton.styleFrom(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10.0.sp),
            ),
            backgroundColor: AppColors.primaryColor,
          ),
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 75.w, vertical: 10.h),
            child: Text(
              'Submit',
              style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.w700,
                  fontSize: 15.sp),
            ),
          ),
        ),
        Container(
          margin: EdgeInsets.only(bottom: 5.h),
          height: 1.h,
          width: 1.sw,
          color: AppColors.greyColor,
        ),
        Text(
          "Already Registered? Login",
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
