import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_team/cubits/auth/auth_cubit.dart';
import 'package:flutter_team/data/models/user_model.dart';
import 'package:flutter_team/ui/auth/login/login.dart';
import 'package:flutter_team/ui/auth/register/register-screen.dart';
import 'package:flutter_team/ui/profile_screen/widgets/card.dart';
import 'package:flutter_team/ui/profile_screen/widgets/card_second.dart';
import 'package:flutter_team/ui/profile_screen/widgets/my_ads.dart';
import 'package:flutter_team/ui/profile_screen/widgets/personal_data.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  bool isSwitched = false;
  UserModel? userModel;
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return BlocConsumer<AuthCubit, AuthState>(
      listener: (context, state) {},
      builder: (context, state) {
        if (state is AuthLoggedState) {
          return Scaffold(
            appBar: AppBar(
              shadowColor: Colors.white,
              actions: [
                IconButton(
                  onPressed: () {},
                  icon: SvgPicture.asset("assets/svg/log_out.svg"),
                )
              ],
              backgroundColor: Colors.white,
              title: Center(
                child: SvgPicture.asset("assets/svg/logo.svg"),
              ),
            ),
            body: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Column(
                children: [
                  SizedBox(
                    height: height * 0.03,
                  ),
                  SizedBox(
                    height: height * 0.1,
                    width: double.infinity,
                    child: const Card(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          CircleAvatar(),
                          Text(
                            'Shoxrux Shavqiyev',
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Card(
                    margin: const EdgeInsets.symmetric(vertical: 5),
                    shape: Border.all(color: const Color(0xffEAEDF0)),
                    child: const SizedBox(
                      width: double.infinity,
                    ),
                  ),
                  CustomCard(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) =>
                              const PersonalData(/*userModel: userModel!*/),
                        ),
                      );
                    },
                    widget: SvgPicture.asset("assets/svg/profile_info.svg"),
                    text: "Personal data",
                  ),
                  CustomCard(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const MyadsScreen(),
                          ));
                    },
                    widget: SvgPicture.asset("assets/svg/announcement.svg"),
                    text: "My ads",
                  ),
                  CustomCard(
                    onTap: () {},
                    widget: SvgPicture.asset("assets/svg/settings.svg"),
                    text: "Settings",
                  ),
                  CustomCardSecond(
                    onTap: () {},
                    widget: CupertinoSwitch(
                        value: isSwitched,
                        onChanged: (v) {
                          setState(() {
                            isSwitched = !isSwitched;
                          });
                        }),
                    text: 'Notifications',
                  ),
                  CustomCardSecond(
                    onTap: () {},
                    widget: Hero(
                        tag: "Rus",
                        child: SvgPicture.asset("assets/svg/flag_ru.svg")),
                    text: 'Language',
                  ),
                  CustomCard(
                    onTap: () {},
                    widget: SvgPicture.asset("assets/svg/rules.svg"),
                    text: "Usage rules",
                  ),
                  CustomCard(
                    onTap: () {},
                    widget: SvgPicture.asset("assets/svg/info.svg"),
                    text: "About us",
                  ),
                ],
              ),
            ),
          );
        } else if (state is AuthUnAuthenticatedState) {
          return Scaffold(
            appBar: AppBar(
              title: Center(
                child: SvgPicture.asset("assets/svg/logo.svg"),
              ),
            ),
            body: const Column(),
          );
        } else {
          return Scaffold(
            appBar: AppBar(
              backgroundColor: Colors.white,
              title: const Center(
                child: Text(
                  "Profile",
                  style: TextStyle(color: Colors.black),
                ),
              ),
            ),
            body: Padding(
              padding: const EdgeInsets.all(20),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Column(
                    children: [
                      Center(
                        child: Image.asset(
                          "assets/images/store.png",
                        ),
                      ),
                      const Text(
                        'Продавайте на нашей платформе',
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const SizedBox(
                        width: 200,
                        child: Text(
                          'Если вы хотите сотрудник или хотите сотрудничать с нами войдите или оставьте заявку',
                        ),
                      ),
                      const SizedBox(
                        height: 15,
                      ),
                      SizedBox(
                        height: 40,
                        width: double.infinity,
                        child: ElevatedButton(
                          style: const ButtonStyle(
                              backgroundColor:
                                  MaterialStatePropertyAll(Color(0xffEAEDF0))),
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => const LoginScreen(),
                              ),
                            );
                          },
                          child: const Text(
                            "Войти",
                            style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                                fontSize: 16),
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 15,
                      ),
                      SizedBox(
                        height: 40,
                        width: double.infinity,
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.white,
                              side: const BorderSide(
                                  color: Colors.blue, width: 2)),
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => const RegisterScreen(),
                              ),
                            );
                          },
                          child: const Text(
                            "Подать заявку",
                            style: TextStyle(
                                color: Colors.blue,
                                fontWeight: FontWeight.bold,
                                fontSize: 16),
                          ),
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
          );
        }
      },
    );
  }
}
