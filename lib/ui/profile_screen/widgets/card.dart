import 'package:flutter/material.dart';

class CustomCard extends StatelessWidget {
  const CustomCard(
      {super.key, required this.onTap, required this.widget, required this.text});
  final VoidCallback onTap;
  final Widget widget;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.symmetric(vertical: 8),
      child: InkWell(
        onTap: onTap,
        child: Row(
          children: [
            IconButton(onPressed: (){}, icon: widget),
            Text(text,style: const TextStyle(fontWeight: FontWeight.bold),),
          ],
        ),
      ),
    );

  }
}
