import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_team/cubits/auth/auth_cubit.dart';
import 'package:flutter_team/cubits/tab_cubit/tab_cubit.dart';
import 'package:flutter_team/data/network/api_service.dart';
import 'package:flutter_team/data/repository/auth_repo/auth_repository.dart';
import 'package:flutter_team/ui/profile_screen/profile_screen.dart';

void main() {
  runApp(MultiRepositoryProvider(
      providers: [
        RepositoryProvider(
          create: (context) => AuthRepository(apiService: ApiService()),
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
      ], child: const MainApp())));
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(

      debugShowCheckedModeBanner: false,
      home: ProfileScreen(),
    );
  }
}
