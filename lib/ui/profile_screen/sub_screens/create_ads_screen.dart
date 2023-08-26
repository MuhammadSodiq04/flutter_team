import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_team/ui/profile_screen/sub_screens/global_text_fields.dart';
import 'package:flutter_team/utils/colors.dart';
class CreateAdsScreen extends StatefulWidget {
  const CreateAdsScreen({super.key});

  @override
  State<CreateAdsScreen> createState() => _CreateAdsScreenState();
}

class _CreateAdsScreenState extends State<CreateAdsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Создать объявления",style: TextStyle(
          color: AppColors.black,
          fontFamily: "Inter",
          fontSize: 16,
          fontWeight: FontWeight.w700
        ),),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const Divider(),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.w),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Котактная информация",
                    style: TextStyle(
                        fontWeight: FontWeight.w700,
                        fontSize: 20.sp,
                        color: AppColors.C_16191D,
                        fontFamily: "Inter"),
                  ),
                ],
              ),
            ),
            SizedBox(height: 16.h),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.w),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Ф.И.О.",
                    style: TextStyle(
                        fontWeight: FontWeight.w700,
                        fontSize: 14.sp,
                        color: AppColors.C_63676C,
                        fontFamily: "Inter"),
                  ),
                ],
              ),
            ),
            SizedBox(height: 8.h),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.w),
              child: GlobalTextField(hintText: "Шохрух Шавкиев", keyboardType: TextInputType.text, textInputAction: TextInputAction.next, textAlign: TextAlign.start, onChanged: (v){}),
            ),

            SizedBox(height: 16.h),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.w),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "E-mail адрес",
                    style: TextStyle(
                        fontWeight: FontWeight.w700,
                        fontSize: 14.sp,
                        color: AppColors.C_63676C,
                        fontFamily: "Inter"),
                  ),
                ],
              ),
            ),
            SizedBox(height: 8.h),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.w),
              child: GlobalTextField(hintText: "77shop@gmail.com", keyboardType: TextInputType.text, textInputAction: TextInputAction.next, textAlign: TextAlign.start, onChanged: (v){}),
            ),
            SizedBox(height: 16.h),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.w),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Телефон номер",
                    style: TextStyle(
                        fontWeight: FontWeight.w700,
                        fontSize: 14.sp,
                        color: AppColors.C_63676C,
                        fontFamily: "Inter"),
                  ),
                ],
              ),
            ),
            SizedBox(height: 8.h),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.w),
              child: GlobalTextField(hintText: "(__) ___-__-__", keyboardType: TextInputType.phone, textInputAction: TextInputAction.next, textAlign: TextAlign.start, onChanged: (v){}),
            ),
            SizedBox(height: 20.h),
            Container(
              height: 16.h,
              color: AppColors.C_F0F3F7,
            ),
            SizedBox(height: 20.h),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.w),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Необходимая информация",
                    style: TextStyle(
                        fontWeight: FontWeight.w700,
                        fontSize: 20.sp,
                        color: AppColors.C_16191D,
                        fontFamily: "Inter"),
                  ),
                ],
              ),
            ),
            SizedBox(height: 16.h),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.w),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Название продукта",
                    style: TextStyle(
                        fontWeight: FontWeight.w700,
                        fontSize: 14.sp,
                        color: AppColors.C_63676C,
                        fontFamily: "Inter"),
                  ),
                ],
              ),
            ),
            SizedBox(height: 8.h),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.w),
              child: GlobalTextField(hintText: "Введите название", keyboardType: TextInputType.text, textInputAction: TextInputAction.next, textAlign: TextAlign.start, onChanged: (v){}),
            ),

            SizedBox(height: 16.h),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.w),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Категория",
                    style: TextStyle(
                        fontWeight: FontWeight.w700,
                        fontSize: 14.sp,
                        color: AppColors.C_63676C,
                        fontFamily: "Inter"),
                  ),
                ],
              ),
            ),
            SizedBox(height: 8.h),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.w),
              child: GlobalTextField(hintText: "Выберите категорию", keyboardType: TextInputType.text, textInputAction: TextInputAction.next, textAlign: TextAlign.start, onChanged: (v){}),
            ),
            SizedBox(height: 16.h),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.w),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Описание",
                    style: TextStyle(
                        fontWeight: FontWeight.w700,
                        fontSize: 14.sp,
                        color: AppColors.C_63676C,
                        fontFamily: "Inter"),
                  ),
                ],
              ),
            ),
            SizedBox(height: 8.h),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.w),
              child: GlobalTextField(
                  maxLine: 6,
                  hintText: "Введите описание", keyboardType: TextInputType.phone, textInputAction: TextInputAction.next, textAlign: TextAlign.start, onChanged: (v){}),
            ),
            SizedBox(height: 20.h),
            Container(
              height: 16.h,
              color: AppColors.C_F0F3F7,
            ),




          ],
        ),
      ),
    );
  }
}
