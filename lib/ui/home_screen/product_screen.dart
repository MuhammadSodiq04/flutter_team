import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:zoom_tap_animation/zoom_tap_animation.dart';

import '../../../utils/colors.dart';
import '../../../utils/icons.dart';

class ProductScreen extends StatefulWidget {
  const ProductScreen({Key? key}) : super(key: key);

  @override
  State<ProductScreen> createState() => _ProductScreenState();
}

class _ProductScreenState extends State<ProductScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.textColor,
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
      body: Column(
        children: [
          const SizedBox(
            height: 10,
          ),
           ListTile(
            leading: IconButton(onPressed: (){
              Navigator.pop(context);
            }, icon: Icon(Icons.arrow_back,color: AppColors.black,)),
            title: Text(
              'Мобильные телефоны',
              style: TextStyle(color: AppColors.black),
            ),
          ),
         const SizedBox(height: 8,),
          Row(
            children: [
               Container(
                 margin: EdgeInsets.all(10),
                   padding: EdgeInsets.all(10),
                decoration: BoxDecoration(
                  color: AppColors.passiveTextColor,
                  borderRadius: BorderRadius.circular(10)
                ),
                child:const SizedBox(width: 160,child: Row(
                  children: [
                    Text('Все объявления'),
                    Spacer(),
                    Icon(Icons.keyboard_arrow_down_rounded)
                  ],
                ),),
              ),
              SizedBox(width: 18.h,),
              SvgPicture.asset(AppImages.horizontal_gred),
              SizedBox(width: 18.h,),
              SvgPicture.asset(AppImages.grid_colorful),
              SizedBox(width: 18.h,),
              SvgPicture.asset(AppImages.filter)
            ],
          ),
          Expanded(
            child: SizedBox(
              height: MediaQuery.of(context).size.height - 195,
              child: GridView.builder(
                physics: const BouncingScrollPhysics(),
                itemCount: 20,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  childAspectRatio: 0.6,
                ),
                itemBuilder: (context, index) {
                  return Container(
                      padding: EdgeInsets.all(5.r),
                      margin: EdgeInsets.all(10.r),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(16.r),
                        color: Colors.white,
                        border: Border.all(color: AppColors.white)
                      ),
                      child: Column(
                        children: [
                          ClipRRect(
                              borderRadius: BorderRadius.circular(16),
                              child: Image.asset(
                                'assets/images/planshet.png',
                                fit: BoxFit.cover,
                                width: double.infinity,
                              )),
                          Row(
                            children: [
                              Container(
                                padding: EdgeInsets.all(4),
                                margin: EdgeInsets.all(4),
                                decoration: BoxDecoration(borderRadius: BorderRadius.circular(8),color: AppColors.C_676A7D),
                                child: Center(child: Text('г. Ташкент',style: TextStyle(color: AppColors.passiveTextColor),),),
                              ),
                            ],
                          ),
                          SizedBox(height: 8.h,),
                          Text('''Оригинальные кроссовки Nike Air Max 97''',style: TextStyle(color: AppColors.black,fontWeight: FontWeight.w600,overflow: TextOverflow.ellipsis),maxLines: 2,),
                        const  Text('Вчера, 19:20',style: TextStyle(color: AppColors.passiveTextColor),)
                        ],
                      ));
                },
              ),
            ),
          ),
        ],
      ),
    );
  }

  List<String> image = [
    AppImages.women,
    AppImages.kosmetika,
    AppImages.texnika,
    AppImages.men,
    AppImages.sogliq,
    AppImages.elektronika,
    AppImages.childeren,
    AppImages.jewelry,
    AppImages.women,
    AppImages.footwear,
    AppImages.avtotovar,
    AppImages.car,
    AppImages.women,
    AppImages.dacha,
    AppImages.gigiena,
    AppImages.acsessuars,
    AppImages.footwear,
    AppImages.remont,
    AppImages.sumka
  ];
}
