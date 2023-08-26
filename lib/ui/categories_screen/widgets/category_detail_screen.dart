import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_team/data/models/category_model/category_childs.dart';
import 'package:flutter_team/utils/colors.dart';
import 'package:flutter_team/utils/icons.dart';

class CategoryDetail extends StatefulWidget {
  const CategoryDetail({super.key, required this.categoryChildsModel, required this.categoryName});

  final List<CategoryChildsModel> categoryChildsModel;
  final String categoryName;

  @override
  State<CategoryDetail> createState() => _CategoryDetailState();
}

class _CategoryDetailState extends State<CategoryDetail> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.C_F0F3F7,
      appBar: AppBar(
        elevation: 0,
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
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16,vertical: 24),
        child: Column(
          children: [
            Row(
              children: [
                IconButton(onPressed: (){}, icon: SvgPicture.asset(AppImages.arrow)),
                SizedBox(width: 8.w,),
                Text(widget.categoryName,style: const TextStyle(fontSize: 24,fontWeight: FontWeight.w700),)
              ],
            ),
            SizedBox(height: 24.h,),
            Container(
              width: 342.w,
              decoration: BoxDecoration(
                color: AppColors.white,
                borderRadius: BorderRadius.circular(12.sp)
              ),
              child: Padding(
                padding: EdgeInsets.all(12.sp),
                child: Column(
                  children: [
                    ...List.generate(widget.categoryChildsModel.length, (index) {
                      CategoryChildsModel categoryChild = widget.categoryChildsModel[index];
                      return ListTile(
                      onTap: (){},
                      contentPadding: EdgeInsets.symmetric(horizontal: 12.w),
                      title: Text(categoryChild.name),
                    );
                    })
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
