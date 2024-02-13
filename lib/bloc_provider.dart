import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:task/features/presentation/cubit/features_cubit.dart';

MultiBlocProvider blocMultiProvider({required child}) {
  return MultiBlocProvider(
    providers: [
      BlocProvider(
        create: (BuildContext context) => FeaturesCubit(),
      ),
    ],
    child: child,
  );
}
