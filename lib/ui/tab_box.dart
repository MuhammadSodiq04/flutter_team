import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_team/cubits/tab_cubit/tab_cubit.dart';


class TabBarScreen extends StatefulWidget {
  const TabBarScreen({Key? key}) : super(key: key);

  @override
  State<TabBarScreen> createState() => _TabBarScreenState();
}

class _TabBarScreenState extends State<TabBarScreen> {
  final List<Widget> _pages = [


  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Colors.red,
      ),
      child: Scaffold(
        body: IndexedStack(
          index: context.watch<NavbarCubit>().state,
          children: _pages,
        ),
        bottomNavigationBar: BottomNavigationBar(
          elevation: 10,
          unselectedItemColor: Colors.black12,
          selectedItemColor: Colors.black,
          backgroundColor: Colors.teal,
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(
                Icons.home,
              ),
              label: '',
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.web,
              ),
              label: '',
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.article,
              ),
              label: '',
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.view_cozy,
              ),
              label: '',
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.bookmark,
              ),
              label: '',
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.person,
              ),
              label: '',
            ),
          ],
          currentIndex: context.watch<NavbarCubit>().state,
          onTap: (index) {
            context.read<NavbarCubit>().updateScreen(index);
          },
        ),
      ),
    );
  }
}