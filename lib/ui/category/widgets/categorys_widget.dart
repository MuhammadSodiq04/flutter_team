import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:flutter_team/utils/colors.dart';
import 'package:flutter_team/utils/icons.dart';

class CategoryWidgets extends StatelessWidget {
  const CategoryWidgets({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(

      height: 85.h,
      width: double.infinity,
      child: Stack(
        children: [
          Positioned(
            right: 0,
            child: Container(
              height: 85.h,
              width: 310.w,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                color: AppColors.C_EAEDF0,
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.5),
                    spreadRadius: 5,
                    blurRadius: 7,
                    offset: Offset(0, 3), // changes position of shadow
                  ),
                ],
              ),
              child: Center(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SizedBox(width: 44.w),
                    Center(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "Для женщин",
                            style: TextStyle(
                                fontWeight: FontWeight.w600,
                                fontSize: 16.sp,
                                color: AppColors.C_16191D,
                                fontFamily: "Inter"),
                          ),
                          Text(
                            "4 147 объявлений",
                            style: TextStyle(
                                fontWeight: FontWeight.w600,
                                fontSize: 16.sp,
                                color: AppColors.C_8E9297,
                                fontFamily: "Inter"),
                          )
                        ],
                      ),
                    ),
                    SvgPicture.asset(AppImages.arrowOther),
                    SizedBox(width: 12.w),
                  ],
                ),
              ),
            ),
          ),
          Positioned(
            top: 5,
            bottom: 5,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(16),
                    color: AppColors.C_EAEDF0,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.5),
                      spreadRadius: 5,
                      blurRadius: 7,
                      offset: Offset(0, 3), // changes position of shadow
                    ),
                  ],
                ),
                height: 64.h,
                width: 64.h,
                child: Center(
                  child: SvgPicture.asset(AppImages.men),
                ),
              ),
            ),
          ),

        ],
      ),
    );
  }
}
