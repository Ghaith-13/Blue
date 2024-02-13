import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../core/utils/app_colors.dart';

class CustomProfileAppBar extends StatelessWidget {
  final bool fromClickOnImg;
  const CustomProfileAppBar({super.key, this.fromClickOnImg = false});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 1.sw,
      child: Row(
        children: [
          fromClickOnImg
              ? IconButton(
                  icon: const Icon(Icons.arrow_back,
                      color: Color.fromRGBO(87, 95, 101, 1)),
                  onPressed: () => Navigator.pop(context),
                )
              : const SizedBox(),
          Expanded(
            child: Padding(
              padding: fromClickOnImg
                  ? EdgeInsets.only(right: 55.w)
                  : const EdgeInsets.all(0.0),
              child: Center(
                child: Text(
                  "profile",
                  style: TextStyle(
                      fontWeight: FontWeight.w700,
                      fontSize: 20.sp,
                      color: const Color.fromRGBO(87, 95, 101, 1)),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}

class ImageWidget extends StatelessWidget {
  const ImageWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            SizedBox(
              width: 50.w,
            ),
            Container(
              width: 161.w,
              height: 158.h,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                image: const DecorationImage(
                  image: AssetImage('assets/images/face.png'),
                  fit: BoxFit.cover,
                ),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.2),
                    blurRadius: 10.0,
                    spreadRadius: -5.0,
                  ),
                ],
              ),
            ),
            SizedBox(
              width: 56.sp,
              height: 56.sp,
              child: Image.asset("assets/images/qr-code.png"),
            )
          ],
        ),
        Text(
          "Samih El Katerji",
          style: TextStyle(
              color: AppColors.secondryColor,
              fontWeight: FontWeight.w700,
              fontSize: 30.sp),
        ),
        Text(
          "71/478074",
          style: TextStyle(
              fontWeight: FontWeight.w400,
              fontSize: 20.sp,
              color: const Color.fromRGBO(147, 147, 147, 1)),
        )
      ],
    );
  }
}

class BlueAndInviteFriends extends StatelessWidget {
  const BlueAndInviteFriends({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        ContainerForBlueAndInviteFroiends(
          description: "Your Plan",
          imgUrl: "assets/images/blue-logo.png",
          title: "Standard",
        ),
        ContainerForBlueAndInviteFroiends(
          description: "Enjoy BLUE With Friends",
          imgUrl: "assets/images/add-friend.png",
          title: "Invite friends",
        ),
      ],
    );
  }
}

class ContainerForBlueAndInviteFroiends extends StatelessWidget {
  final String imgUrl, title, description;
  const ContainerForBlueAndInviteFroiends(
      {super.key,
      required this.imgUrl,
      required this.title,
      required this.description});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(15.sp),
      width: 170.w,
      height: 136.h,
      decoration: BoxDecoration(
        color: AppColors.primaryColor,
        borderRadius: BorderRadius.circular(5.0.sp),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.15),
            blurRadius: 5.0,
            spreadRadius: 2.0,
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Image.asset(imgUrl),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title,
                style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.w700,
                    fontSize: 20.sp),
              ),
              Text(
                description,
                style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.w300,
                    fontSize: 14.sp),
              )
            ],
          ),
        ],
      ),
    );
  }
}

class CorporatePlanWidget extends StatelessWidget {
  const CorporatePlanWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(5.sp),
      width: 1.sw,
      decoration: BoxDecoration(
        color: AppColors.secondryColor,
        borderRadius: BorderRadius.circular(5.0.sp),
        border: Border.all(color: Colors.blue),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.15),
            blurRadius: 5.0,
            spreadRadius: 2.0,
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Icon(
                Icons.close,
                color: Colors.white,
              )
            ],
          ),
          Text(
            "Corporate Plan",
            style: TextStyle(
                color: Colors.white,
                fontSize: 20.sp,
                fontWeight: FontWeight.w700),
          ),
          SizedBox(
            height: 10.h,
          ),
          Text(
            "Unlock Exclusive Benefits Upgrade to Our Corporate Plan Today!",
            style: TextStyle(
                color: Colors.white,
                fontSize: 20.sp,
                fontWeight: FontWeight.w300),
          ),
          SizedBox(
            height: 10.h,
          ),
          ElevatedButton(
            onPressed: () {},
            style: ElevatedButton.styleFrom(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(5.0.sp),
                side: const BorderSide(
                  color: Colors.blue,
                  width: 1.0,
                ),
              ),
              backgroundColor: Colors.white,
              elevation: 5.0,
            ),
            child: Text(
              "Join Corporate",
              style: TextStyle(
                  color: AppColors.secondryColor,
                  fontSize: 16.sp,
                  fontWeight: FontWeight.w700),
            ),
          ),
        ],
      ),
    );
  }
}

class GradiantContainer extends StatelessWidget {
  final List<String?> images, titles;
  const GradiantContainer(
      {super.key, required this.images, required this.titles});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(15.sp),
      width: 1.sw,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10.0),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.15),
            blurRadius: 5.0,
            spreadRadius: 2.0,
          ),
        ],
        gradient: const LinearGradient(
          begin: Alignment.topRight,
          end: Alignment.bottomLeft,
          colors: [
            Colors.white, // Top right color
            AppColors.primaryColor, // Bottom left color
          ],
        ),
      ),
      child: Column(
        children: [
          for (int i = 0; i < images.length; i++)
            Column(
              children: [
                RowForOption(
                  imgUrl: images[i]!,
                  title: titles[i]!,
                ),
                i < images.length - 1
                    ? SizedBox(height: 30.h)
                    : const SizedBox(),
              ],
            ),
        ],
      ),
    );
  }
}

class RowForOption extends StatelessWidget {
  final String imgUrl, title;
  const RowForOption({super.key, required this.imgUrl, required this.title});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                SizedBox(
                    width: 25.sp, height: 25.sp, child: Image.asset(imgUrl)),
                SizedBox(
                  width: 25.0.w,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      title,
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 20.sp,
                          fontWeight: FontWeight.w300),
                    ),
                    title == "Account"
                        ? Text(
                            "verify your account",
                            style: TextStyle(
                                color: Colors.red,
                                fontSize: 10.sp,
                                fontWeight: FontWeight.w400),
                          )
                        : const SizedBox()
                  ],
                )
              ],
            ),
            title == "Inbox"
                ? Container(
                    padding: EdgeInsets.all(5.sp),
                    width: 25.sp,
                    height: 25.sp,
                    decoration: BoxDecoration(
                      color: Colors.red,
                      borderRadius: BorderRadius.circular(6.0.sp),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black.withOpacity(0.15),
                          blurRadius: 5.0,
                          spreadRadius: 2.0,
                        ),
                      ],
                    ),
                    child: Center(
                      child: Text(
                        "4",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 14.sp,
                            fontWeight: FontWeight.w400),
                      ),
                    ),
                  )
                : const SizedBox()
          ],
        ),
      ],
    );
  }
}

class FillBlueLogoContainer extends StatelessWidget {
  const FillBlueLogoContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: EdgeInsets.all(15.sp),
        width: 1.sw,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10.0),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.15),
              blurRadius: 5.0,
              spreadRadius: 2.0,
            ),
          ],
          gradient: const LinearGradient(
            begin: Alignment.topRight,
            end: Alignment.bottomLeft,
            colors: [
              Colors.white, // Top right color
              AppColors.primaryColor, // Bottom left color
            ],
          ),
        ),
        child: Image.asset("assets/images/blue-logo-fill.png"));
  }
}
