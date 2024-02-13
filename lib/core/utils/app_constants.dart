import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:task/features/presentation/cubit/features_cubit.dart';
import 'package:task/features/presentation/pages/home_screen.dart';

import '../../features/presentation/widgets/dashboard_widgets.dart';
import 'app_colors.dart';

class AppConstants {
  static customNavigation(
      BuildContext context, Widget screen, double x, double y) async {
    await Navigator.push(
      context,
      PageRouteBuilder(
        transitionDuration: const Duration(milliseconds: 500),
        transitionsBuilder: (context, animation, secondaryAnimation, child) {
          return SlideTransition(
            position: Tween<Offset>(
              begin: Offset(x, y),
              end: Offset.zero,
            ).animate(animation),
            child: child,
          );
        },
        pageBuilder: (context, animation, secondaryAnimation) {
          return screen;
        },
      ),
    );
  }

  static cutomBottomNavigation(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 10.h),
      height: 100.h,
      width: 1.sw,
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.bottomCenter,
          end: Alignment.topCenter,
          colors: [
            Colors.white, // Bottom color
            AppColors.primaryColor, // Top color
          ],
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          InkWell(
            onTap: () {
              context.read<FeaturesCubit>().changeValueFowShowPage("dashboard");
              Navigator.of(context).pushAndRemoveUntil(
                MaterialPageRoute(builder: (context) => const HomeScreen()),
                (Route route) => false,
              );
            },
            child: const BottomNavigationBarButton(
              imgUrl: "assets/images/home.png",
              title: "Home",
            ),
          ),
          const BottomNavigationBarButton(
            imgUrl: "assets/images/statistic.png",
            title: "Invest",
          ),
          const BottomNavigationBarButton(
            imgUrl: "assets/images/history.png",
            title: "History",
          ),
          const BottomNavigationBarButton(
            imgUrl: "assets/images/loan2.png",
            title: "Loan",
          ),
          InkWell(
            onTap: () {
              context.read<FeaturesCubit>().changeValueFowShowPage("profile");
              Navigator.of(context).pushAndRemoveUntil(
                MaterialPageRoute(builder: (context) => const HomeScreen()),
                (Route route) => false,
              );
            },
            child: const BottomNavigationBarButton(
              imgUrl: "assets/images/profile.png",
              title: "Profile",
            ),
          )
        ],
      ),
    );
  }
}
