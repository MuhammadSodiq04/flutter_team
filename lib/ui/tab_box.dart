import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:flutter_team/cubits/tab_cubit/tab_cubit.dart';
import 'package:flutter_team/ui/category/category_screen.dart';
import 'package:flutter_team/ui/home/home_screen.dart';
import 'package:flutter_team/ui/profile_screen/profile_screen.dart';
import 'package:flutter_team/utils/colors.dart';
import 'package:flutter_team/utils/icons.dart';


class TabBarScreen extends StatefulWidget {
  const TabBarScreen({Key? key}) : super(key: key);

  @override
  State<TabBarScreen> createState() => _TabBarScreenState();
}

class _TabBarScreenState extends State<TabBarScreen> {
  final List<Widget> _pages = [
    HomeScreen(),
    CategoryScreen(),
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
          index: context.watch<NavbarCubit>().state,
          children: _pages,
        ),
        bottomNavigationBar: BottomNavigationBar(
          elevation: 10,
          unselectedItemColor: AppColors.C_676A7D,
          selectedItemColor: Colors.black,
          selectedLabelStyle: TextStyle(
            fontFamily: "Inter",
            fontSize: 12.sp,
            fontWeight: FontWeight.w600,
            color: AppColors.C_16191D
          ),unselectedLabelStyle: TextStyle(
            fontFamily: "Inter",
            fontSize: 12.sp,
            fontWeight: FontWeight.w600,
            color: AppColors.C_676A7D
          ),
          backgroundColor: Colors.teal,
          items:  <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: SvgPicture.asset(AppImages.home),
              label: 'Главная',
            ),
            BottomNavigationBarItem(
              icon: SvgPicture.asset(AppImages.search),
              label: 'Поиск',
            ),
            BottomNavigationBarItem(
              icon:  SvgPicture.asset(AppImages.category),
              label: 'Категории',
            ),
            BottomNavigationBarItem(
              icon:  SvgPicture.asset(AppImages.profile),
              label: 'Профиль',
            ),
          ],
          currentIndex: context.watch<NavbarCubit>().state,
          onTap: (index) {
            context.read<NavbarCubit>().updateScreen(index);
          },
        ),
      ),
    );
  }
}