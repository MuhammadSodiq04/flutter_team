import 'package:flutter/material.dart';
import 'package:flutter_team/utils/colors.dart';

class GlobalTextField extends StatelessWidget {
  GlobalTextField({
    Key? key,
    required this.hintText,
    required this.keyboardType,
    required this.textInputAction,
    required this.textAlign,
    this.obscureText = false,
    this.maxLine = 1,
    required this.onChanged,
  }) : super(key: key);

  final String hintText;
  TextInputType keyboardType;
  TextInputAction textInputAction;
  TextAlign textAlign;
  final ValueChanged<String> onChanged;
  final bool obscureText;
  final int maxLine;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: Colors.white,
          // border: Border.all(color: AppColors.C_F0F3F7),
          borderRadius: BorderRadius.circular(10),
      ),
      child: TextField(
        onChanged: onChanged,
        cursorColor: Colors.black,
        maxLines: maxLine,
        style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.w600,
            color: AppColors.c_0C1A30,
            fontFamily: "DMSans"),
        textAlign: textAlign,
        textInputAction: textInputAction,
        keyboardType: keyboardType,
        obscureText: obscureText,
        decoration: InputDecoration(
          filled: true,
          fillColor: AppColors.C_F0F3F7,
          hintText: hintText,
          hintStyle: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w600,
              color: AppColors.c_999999,
              fontFamily: "DMSans"),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide: BorderSide(width: 1, color: AppColors.white),
          ),
          disabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(30),
            borderSide: BorderSide(
              width: 1,
              color: AppColors.C_F0F3F7,
            ),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide: BorderSide(
              width: 1,
              color: AppColors.C_F0F3F7,
            ),
          ),
          errorBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide: BorderSide(
              width: 1,
              color: AppColors.C_F0F3F7,
            ),
          ),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide: BorderSide(
              width: 1,
              color: AppColors.C_F0F3F7,
            ),
          ),
        ),
      ),
    );
  }
}
