import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:task/core/utils/app_constants.dart';

import '../widgets/profile_widgets.dart';

class ProfileScreen extends StatelessWidget {
  final bool fromClickOnImg;
  const ProfileScreen({super.key, this.fromClickOnImg = false});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar:
          fromClickOnImg ? AppConstants.cutomBottomNavigation(context) : null,
      body: SingleChildScrollView(
        child: Column(children: [
          Container(
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage("assets/images/background.png"),
                fit: BoxFit.cover,
              ),
            ),
            width: 1.sw,
            child: SafeArea(
              child: Padding(
                padding: EdgeInsets.symmetric(vertical: 10.h, horizontal: 10.w),
                child: Column(
                  children: [
                    CustomProfileAppBar(
                      fromClickOnImg: fromClickOnImg,
                    ),
                    SizedBox(
                      height: 10.h,
                    ),
                    const ImageWidget()
                        .animate()
                        .fade(duration: 500.ms)
                        .scale(delay: 500.ms),
                    SizedBox(
                      height: 10.h,
                    ),
                    const BlueAndInviteFriends()
                        .animate()
                        .fade(duration: 500.ms)
                        .scale(delay: 500.ms),
                    SizedBox(
                      height: 10.h,
                    ),
                    const CorporatePlanWidget()
                        .animate()
                        .fade(duration: 500.ms)
                        .scale(delay: 500.ms),
                    SizedBox(
                      height: 10.h,
                    ),
                    const GradiantContainer(
                      images: [
                        "assets/images/help.png",
                        "assets/images/profile.png",
                        "assets/images/idea.png",
                        "assets/images/mail.png"
                      ],
                      titles: ["Help", "Account", "Learn", "Inbox"],
                    ).animate().fade(duration: 500.ms).scale(delay: 500.ms),
                    SizedBox(
                      height: 5.h,
                    ),
                    const GradiantContainer(
                      images: [
                        "assets/images/security.png",
                        "assets/images/notification.png",
                        "assets/images/coloring.png",
                        "assets/images/identity-card.png"
                      ],
                      titles: [
                        "Security and privacy",
                        "Notification settings",
                        "Appearance -Light Mode ",
                        "Support Ticket"
                      ],
                    ).animate().fade(duration: 500.ms).scale(delay: 500.ms),
                    SizedBox(
                      height: 10.h,
                    ),
                    const GradiantContainer(
                      images: [
                        "assets/images/blue-logo.png",
                        "assets/images/log-out.png",
                      ],
                      titles: [
                        "About us",
                        "Log out",
                      ],
                    ).animate().fade(duration: 500.ms).scale(delay: 500.ms),
                    SizedBox(
                      height: 10.h,
                    ),
                    const FillBlueLogoContainer()
                        .animate()
                        .fade(duration: 500.ms)
                        .scale(delay: 500.ms)
                  ],
                ),
              ),
            ),
          )
        ]),
      ),
    );
  }
}
