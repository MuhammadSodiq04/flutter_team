import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_team/cubits/auth/auth_cubit.dart';
import 'package:flutter_team/cubits/category/category_cubit.dart';
import 'package:flutter_team/cubits/home/home_cubit.dart';
import 'package:flutter_team/cubits/tab_cubit/tab_cubit.dart';
import 'package:flutter_team/data/network/api_service.dart';
import 'package:flutter_team/data/repository/auth_repo/auth_repository.dart';
import 'package:flutter_team/data/repository/category/category_repository.dart';
import 'package:flutter_team/data/repository/home/home_repository.dart';
import 'package:flutter_team/ui/profile_screen/profile_screen.dart';
import 'package:flutter_team/ui/tab_box.dart';

void main() {
  runApp(MultiRepositoryProvider(
      providers: [
        RepositoryProvider(
          create: (context) => AuthRepository(apiService: ApiService()),
        ),
        RepositoryProvider(
          create: (context) => CategoryRepository(apiService: ApiService()),
        ),RepositoryProvider(
          create: (context) => HomeRepository(apiService: ApiService()),
        ),
      ],
      child: MultiBlocProvider(providers: [
        BlocProvider(
          create: (context) => AuthCubit(
            authRepository: context.read<AuthRepository>(),
          ),
        ),
        BlocProvider(
          create: (context) => TabBoxCubit(),
        ),
        BlocProvider(
          create: (context) => CategoryCubit(
            categoryRepositories: context.read<CategoryRepository>(),
          ),
        ), BlocProvider(
          create: (context) => HomeCubit(
            homeRepository: context.read<HomeRepository>(),
          ),
        ),
      ], child: const MainApp())));
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
        designSize: Size(375, 812),
        minTextAdapt: true,
        splitScreenMode: true,
        builder: (context, child) {
          return const MaterialApp(
            debugShowCheckedModeBanner: false,
            home: TabBarScreen(),
          );
        });
  }
}
