import 'package:flutter/material.dart';
import 'package:flutter_team/cubits/auth/auth_cubit.dart';
import 'package:flutter_team/cubits/tab_cubit/tab_cubit.dart';
import 'package:flutter_team/data/repository/auth_repo/auth_repository.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_team/ui/app_routes.dart';
import 'package:flutter_team/ui/tab_box.dart';
import 'package:flutter_team/utils/text_theme.dart';

import 'data/network/api_service.dart';
import 'local/storage_repository/storage_repository.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await StorageRepository.getInstance();

  runApp(App(apiService: ApiService()));
}

class App extends StatelessWidget {
  const App({super.key, required this.apiService});

  final ApiService apiService;

  @override
  Widget build(BuildContext context) {
    return MultiRepositoryProvider(
      providers: [
        RepositoryProvider(
          create: (context) => AuthRepository(apiService: apiService),
        ),
        // RepositoryProvider(
        //   create: (context) => ProfileRepository(apiService: apiService),
        // ),
      ],
      child: MultiBlocProvider(
        providers: [
          BlocProvider(
            create: (context) => AuthCubit(
              authRepository: context.read<AuthRepository>(),
            ),
          ),
          BlocProvider(create: (context) => NavbarCubit()),
          // BlocProvider(create: (context) => UserDataCubit()),
          // BlocProvider(
          //     create: (context) => ProfileCubit(
          //         profileRepository: context.read<ProfileRepository>())),
          // BlocProvider(
          //     create: (context) => WebsiteCubit(
          //         websiteRepository: context.read<WebsiteRepository>())),
        ],
        child: const MyApp(),
      ),
    );
  }
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(375, 812),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (context, child) {
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          theme: AppTheme.darkTheme,
          darkTheme: AppTheme.darkTheme,
          themeMode: ThemeMode.dark,
          // onGenerateRoute: AppRoutes.generateRoute,
          // initialRoute: RouteNames.tabBox,
          home: TabBarScreen(),
        );
      },
    );
  }
}
