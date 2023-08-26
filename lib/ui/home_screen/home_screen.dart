import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_team/utils/colors.dart';
import 'package:flutter_team/utils/icons.dart';
import 'package:shimmer/shimmer.dart';
import 'package:zoom_tap_animation/zoom_tap_animation.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        systemOverlayStyle:
            const SystemUiOverlayStyle(statusBarColor: Colors.transparent),
        backgroundColor: Colors.white,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            SvgPicture.asset(AppImages.flag_ru),
            SvgPicture.asset(AppImages.logo),
            SvgPicture.asset(AppImages.notification)
          ],
        ),
        centerTitle: true,
      ),
      backgroundColor: AppColors.C_F0F3F7,
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 16.w),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 20.h),
            Text(
              "Популярное продукты",
              style: TextStyle(
                  fontSize: 24.sp,
                  fontWeight: FontWeight.w700,
                  fontFamily: "Inter",
                  color: AppColors.C_16191D),
            ),
            SizedBox(height: 5.h),
            Text(
              "Вы можете найти все категории, которые вам нужны от покупателя",
              style: TextStyle(
                  fontSize: 14.sp,
                  fontWeight: FontWeight.w400,
                  fontFamily: "Inter",
                  color: AppColors.C_8E9297),
            ),
            SizedBox(height: 16.h),
            Shimmer.fromColors(
              baseColor: Colors.white,
              highlightColor: Colors.grey.shade500,
              child: SizedBox(
                height: MediaQuery.of(context).size.height*0.69,
                child: GridView.builder(
                  physics: const BouncingScrollPhysics(),
                  itemCount: 20,
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    childAspectRatio: 0.7,
                  ),
                  itemBuilder: (context, index) {
                    return ZoomTapAnimation(
                      onTap: () {},
                      child: Container(
                        padding: EdgeInsets.all(5.r),
                        margin: EdgeInsets.all(10.r),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(16.r),
                            color: Colors.white,
                            border: Border.all(color: Colors.white54)),
                        child: Column(
                          children: [
                            Container(
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(12.r),
                              color: Colors.white,

                              ),
                            ),
                          ],
                        ),
                      ),
                    );
                  },
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
