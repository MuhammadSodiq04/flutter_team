import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class MyadsScreen extends StatelessWidget {
  const MyadsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        shadowColor: Colors.white,
        title: Center(child: SvgPicture.asset("assets/svg/logo.svg")),
        leading: IconButton(
          onPressed: () {},
          icon: Hero(
            tag: "Rus",
            child: SvgPicture.asset(
              "assets/svg/flag_ru.svg",
            ),
          ),
        ),
      ),
      body: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              IconButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                icon: SvgPicture.asset(
                  "assets/svg/arrow.svg",
                ),
              ),
              const Center(
                child: Text(
                  "My Announcements",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 24,
                  ),
                ),
              ),
              const SizedBox(),
            ],
          ),

        ],
      ),
    );
  }
}
