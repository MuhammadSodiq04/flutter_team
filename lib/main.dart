import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_team/cubits/category/category_cubit.dart';
import 'package:flutter_team/data/network/api_service.dart';
import 'package:flutter_team/data/repository/auth_repo/auth_repository.dart';
import 'package:flutter_team/data/repository/category/category_repository.dart';
import 'package:flutter_team/local/storage_repository/storage_repository.dart';
import 'package:flutter_team/ui/category/category_screen.dart';

void main() async {
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
        RepositoryProvider(
          create: (context) => CategoryRepository(apiService: apiService),
        ),
        // RepositoryProvider(
        //   create: (context) => WebsiteRepository(apiService: apiService),
        // ),
        // RepositoryProvider(
        //   create: (context) => ProfileRepository(apiService: apiService),
        // ),
      ],
      child: MultiBlocProvider(
        providers: [
          BlocProvider(create: (context) => CategoryCubit(categoryRepositories: context.read<CategoryRepository>())),
          // BlocProvider(
          //   create: (context) => AuthCubit(
          //     authRepository: context.read<AuthRepository>(),
          //   ),
          // ),
          // BlocProvider(
          //   create: (context) => ArticleCubit(
          //     articleRepositories: context.read<ArticleRepositories>(),
          //   ),
          // ),
          // BlocProvider(
          //     create: (context) => ProfileCubit(
          //         profileRepository: context.read<ProfileRepository>())),
          // BlocProvider(
          //     create: (context) => WebsiteCubit(
          //         websiteRepository: context.read<WebsiteRepository>())),
        ],
        child: const MainApp(),
      ),
    );
  }
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: CategoryScreen()
      ),
    );
  }
}
