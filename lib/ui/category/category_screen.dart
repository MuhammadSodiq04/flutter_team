import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:flutter_team/ui/category/widgets/categorys_widget.dart';
import 'package:flutter_team/utils/colors.dart';
import 'package:flutter_team/utils/icons.dart';

class CategoryScreen extends StatefulWidget {
  const CategoryScreen({super.key});

  @override
  State<CategoryScreen> createState() => _CategoryScreenState();
}

class _CategoryScreenState extends State<CategoryScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.C_F0F3F7,
      appBar: AppBar(
        centerTitle: true,
        title: SvgPicture.asset(AppImages.logo),
        leading: Padding(
          padding: const EdgeInsets.only(left: 16, right: 8, top: 8, bottom: 8),
          child: SvgPicture.asset(AppImages.flag_ru),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: SvgPicture.asset(AppImages.notification),
          ),
          SizedBox(width: 8.w),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: Column(
          children: [
            CategoryWidgets()
          ],
        ),
      ),
    );
  }
}
