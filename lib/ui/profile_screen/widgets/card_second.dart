import 'package:flutter/material.dart';

class CustomCardSecond extends StatelessWidget {
  const CustomCardSecond(
      {super.key, required this.onTap, required this.widget, required this.text});
  final VoidCallback onTap;
  final Widget widget;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Card(

      margin: const EdgeInsets.symmetric(vertical: 8),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8.0),
        child: InkWell(
          onTap: onTap,
          child: Row(

            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(text,style: const TextStyle(fontWeight: FontWeight.bold),),
              IconButton(onPressed: onTap, icon: widget),

            ],
          ),
        ),
      ),
    );
  }
}
