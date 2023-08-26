import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:flutter_team/cubits/category/category_cubit.dart';
import 'package:flutter_team/data/models/category_model/category_model.dart';
import 'package:flutter_team/ui/categories_screen/widgets/category_detail_screen.dart';
import 'package:flutter_team/utils/colors.dart';
import 'package:flutter_team/utils/constants.dart';
import 'package:flutter_team/utils/icons.dart';
import 'package:flutter_team/utils/ui_utils/error_message_dialog.dart';
import 'package:zoom_tap_animation/zoom_tap_animation.dart';

class CategoryScreen extends StatelessWidget {
  const CategoryScreen({super.key});

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
      body: BlocConsumer<CategoryCubit, CategoryState>(
        listener: (context, state) {
          if (state is CategoryLoadingState) {
            const Center(
              child: CircularProgressIndicator(),
            );
          }
          if (state is CategoryErrorState) {
            showErrorMessage(message: state.errorText, context: context);
          }
        },
        builder: (context, state) {
          if (state is CategoryGetState) {
            return GridView.builder(
              physics: const BouncingScrollPhysics(),
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 1,
                mainAxisSpacing: 10.0,
                crossAxisSpacing: 20,
              ),
              itemCount: state.categoryModel.length,
              itemBuilder: (BuildContext context, int index) {
                CategoryModel categoryModel = state.categoryModel[index];
                return ZoomTapAnimation(
                  onTap: () {
                    Navigator.push(context,MaterialPageRoute(builder: (context){
                      return CategoryDetail(categoryChildsModel: categoryModel.childs, categoryName: categoryModel.name);
                    }));
                  },
                  child: SizedBox(
                        height: 100.h,
                        width: 342.w,
                        child: Stack(
                          children: [
                            Padding(
                              padding: EdgeInsets.only(left: 49.w,bottom: 6.h,top: 6.h),
                              child: SizedBox(
                                width: 310.w,
                                height: 85.h,
                                child: Container(
                                  decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: BorderRadius.circular(12.sp)
                                  ),
                                  child: Center(
                                    child: ListTile(
                                      contentPadding: EdgeInsets.only(left: 44.w,right: 12.w),
                                      title: Text(categoryModel.name),
                                      subtitle: Text('${categoryModel.adsCount} advertisement'),
                                      trailing: const Icon(Icons.navigate_next_outlined),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.symmetric(horizontal: 17.w),
                              child: Align(
                                  alignment: Alignment.centerLeft,
                                  child: Container(
                                    height: 64.h,
                                    width: 64.w,
                                    decoration: BoxDecoration(
                                        boxShadow: const [BoxShadow(color: Colors.grey,spreadRadius: -4,blurRadius: 10)],
                                        color: Colors.white,
                                        borderRadius: BorderRadius.circular(12.sp)
                                    ),
                                    child: Padding(
                                        padding: EdgeInsets.all(16.sp),
                                        child: CachedNetworkImage(
                                          imageUrl: baseUrl+categoryModel.icon.substring(1),
                                        )),
                                  )),
                            )
                          ],
                        ),
                      )
                  );
              },
            );
          }
          return const Center(
            child: CircularProgressIndicator(),
          );
        },
      ),
    );
  }
}
