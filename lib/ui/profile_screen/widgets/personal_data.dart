import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class PersonalData extends StatelessWidget {
  const PersonalData({
    super.key,
    /*required this.userModel*/
  });
  /*final UserModel userModel;*/

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
                child: Hero(
                  tag: "Personal Data",
                  child: Text(
                    "Personal Data",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 24,
                    ),
                  ),
                ),
              ),
              const SizedBox(),
            ],
          ),
          SizedBox(
            width: double.infinity,
            child: Card(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    const CircleAvatar(),
                    const Text(
                      'Shoxrux Shavqiyev',
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                    ),
                    const SizedBox(height: 50),
                    Card(
                      color: const Color(0xffF0F3F7),
                      margin: const EdgeInsets.symmetric(vertical: 8),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Image.asset('assets/images/phone.png'),
                            const Text(
                              '+99888 033 85 56',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 16),
                            ),
                            const SizedBox(),
                            const SizedBox(),
                            const SizedBox(),
                          ],
                        ),
                      ),
                    ),
                    Card(
                      color: const Color(0xffF0F3F7),
                      margin: const EdgeInsets.symmetric(vertical: 8),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Image.asset('assets/images/email.png'),
                            const Text(
                              'sh.shavqiyev@77.uz',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 16),
                            ),
                            const SizedBox(),
                            const SizedBox(),
                            const SizedBox(),
                          ],
                        ),
                      ),
                    ),
                    Card(
                      color: const Color(0xffF0F3F7),
                      margin: const EdgeInsets.symmetric(vertical: 8),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Image.asset('assets/images/location.png'),
                            const SizedBox(
                              width: 50,
                            ),
                            const Flexible(
                              child: Text(
                                '8897+PMP, Alma-chi Street, Тashkent, Узбекистан',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 16),
                              ),
                            ),
                            const SizedBox(
                              width: 50,
                            ),
                            const SizedBox(),
                            const SizedBox(),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
