import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_team/cubits/tab_cubit/tab_cubit.dart';
import 'package:flutter_team/ui/categories_screen/category_screen.dart';
import 'package:flutter_team/ui/home_screen/home_screen.dart';
import 'package:flutter_team/ui/home_screen/widgets/create_ads_screen.dart';
import 'package:flutter_team/ui/profile_screen/profile_screen.dart';

import '../utils/icons.dart';

class TabBarScreen extends StatefulWidget {
  const TabBarScreen({Key? key}) : super(key: key);

  @override
  State<TabBarScreen> createState() => _TabBarScreenState();
}

class _TabBarScreenState extends State<TabBarScreen> {
  final List<Widget> _pages = [
    HomeScreen(),
    Placeholder(),
    CategoryScreen(),
    ProfileScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Colors.red,
      ),
      child: Scaffold(
        body: IndexedStack(
          index: context.watch<TabBoxCubit>().state,
          children: _pages,
        ),
        bottomNavigationBar: BottomNavigationBar(
          elevation: 10,
          unselectedItemColor: Colors.black12,
          selectedItemColor: Colors.black,
          backgroundColor: Colors.teal,
          items: <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: SvgPicture.asset(AppImages.home),
              label: 'Главная',
            ),
            BottomNavigationBarItem(
              icon: SvgPicture.asset(AppImages.search),
              label: 'Поиск',
            ),
            BottomNavigationBarItem(
              icon: SvgPicture.asset(AppImages.category),
              label: 'Категории',
            ),
            BottomNavigationBarItem(
              icon: SvgPicture.asset(AppImages.profile),
              label: 'Профиль',
            ),
          ],
          currentIndex: context.watch<TabBoxCubit>().state,
          onTap: (index) {
            context.read<TabBoxCubit>().updateScreen(index);
          },
        ),
      ),
    );
  }
}
