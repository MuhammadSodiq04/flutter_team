import 'package:flutter/material.dart';

class CustomTextfield extends StatelessWidget {
  const CustomTextfield({super.key, required this.label});
  final String label;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 44,
      child: TextFormField(
        decoration: InputDecoration(
          fillColor: Color(0xffF0F3F7),
          filled: true,
          labelStyle: TextStyle(color: Color(0xffB8BBBD)),
          label: Text(label),
            border: OutlineInputBorder(
              borderSide: BorderSide.none,
              borderRadius: BorderRadius.circular(
                10,
              ),
            ),
        ),
      ),
    );
  }
}
