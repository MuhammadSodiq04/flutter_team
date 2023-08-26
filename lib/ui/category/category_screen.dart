import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_team/cubits/category/category_cubit.dart';
import 'package:flutter_team/data/models/category/category_model.dart';
import 'package:flutter_team/utils/colors.dart';
import 'package:flutter_team/utils/ui_utils/error_message_dialog.dart';
import 'package:zoom_tap_animation/zoom_tap_animation.dart';

class CategoryScreen extends StatefulWidget {
  const CategoryScreen({super.key});

  @override
  State<CategoryScreen> createState() => _CategoryScreenState();
}

class _CategoryScreenState extends State<CategoryScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF0F3F7),
      appBar: AppBar(
        title: const Text("Category"),
        actions: [
          IconButton(
            splashRadius: 28,
            onPressed: () {},
            icon: const Icon(Icons.add),
          )
        ],
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
              itemCount: state.categoryModel.length+1,
              itemBuilder: (BuildContext context, int index) {
                CategoryModel categoryModel = state.categoryModel[index];
                return ZoomTapAnimation(
                  onTap: () {
                    // Navigator.pushNamed(context, RouteNames.articleDetail, arguments: {
                    // 'article': articleModel,
                    // 'index':index
                    // },);
                  },
                  child: Container(
                      decoration: BoxDecoration(
                          color: AppColors.C_6C63FF,
                          borderRadius: BorderRadius.circular(26)),
                      margin: const EdgeInsets.only(
                          left: 16, right: 16, top: 14, bottom: 14),
                    child: Text(categoryModel.name),
                     ),
                );
              },
            );
          }else{
          return Column(
            children: [
             ...List.generate(5, (index) => SizedBox(
               height: 100,
               width: 342,
               child: Stack(
                 children: [
                   Padding(
                     padding: const EdgeInsets.only(left: 49,bottom: 12),
                     child: SizedBox(
                       width: 310,
                       height: 85,
                       child: Container(
                         decoration: BoxDecoration(
                           color: Colors.white,
                           borderRadius: BorderRadius.circular(12)
                         ),
                         
                         child: const ListTile(
                           title: Text('Computers'),
                           subtitle: Text('1 advertisement'),
                         ),
                       ),
                     ),
                   )
                 ],
               ),
             ))
            ],
          );
          }
          // return const Center(
          //   child: CircularProgressIndicator(),
          // );
        },
      ),
    );
  }
}
