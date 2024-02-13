import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:task/core/utils/app_constants.dart';
import 'package:task/features/presentation/cubit/features_cubit.dart';
import 'package:task/features/presentation/pages/dashboard_screen.dart';
import 'package:task/features/presentation/pages/profile_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: AppConstants.cutomBottomNavigation(context),
      body: BlocBuilder<FeaturesCubit, FeaturesState>(
        builder: (context, state) {
          return state.showpage == "dashboard"
              ? const DashboardScreen()
              : state.showpage == "profile"
                  ? const ProfileScreen()
                  : const SizedBox();
        },
      ),
    );
  }
}
