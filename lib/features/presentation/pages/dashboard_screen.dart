import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../widgets/dashboard_widgets.dart';

class DashboardScreen extends StatefulWidget {
  const DashboardScreen({super.key});

  @override
  State<DashboardScreen> createState() => _DashboardScreenState();
}

class _DashboardScreenState extends State<DashboardScreen> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Container(
            width: 1.sw,
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
                  children: [
                    const CustomAppBar(),
                    SizedBox(
                      height: 20.h,
                    ),
                    const Balance()
                        .animate()
                        .fade(duration: 500.ms)
                        .scale(delay: 500.ms),
                    SizedBox(
                      height: 20.h,
                    ),
                    const Sections()
                        .animate()
                        .fade(duration: 500.ms)
                        .scale(delay: 500.ms),
                    SizedBox(
                      height: 10.h,
                    ),
                    const LineChartSample2()
                        .animate()
                        .fade(duration: 500.ms)
                        .scale(delay: 500.ms),
                    SizedBox(
                      height: 30.h,
                    ),
                    const LastTransaction()
                        .animate()
                        .fade(duration: 500.ms)
                        .scale(delay: 500.ms),
                    SizedBox(
                      height: 20.h,
                    ),
                    const News()
                        .animate()
                        .fade(duration: 500.ms)
                        .scale(delay: 500.ms)
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
