import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../components/const.dart';
import '../../cubit/global_cubit.dart';
import '../../cubit/global_states.dart';



class MainScreen extends StatefulWidget {

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  @override
  Widget build(BuildContext context) {
    return BlocConsumer<GlobalCubit, GlobalStates>(
      listener: (context, state) {},
      builder: (context, state) {
        var cubit = GlobalCubit.get(context);

        return Directionality(
          textDirection: TextDirection.rtl,
          child: Scaffold(

            body: cubit.screens[cubit.currentIndex],
            bottomNavigationBar: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                    topRight: Radius.circular(30),
                    topLeft: Radius.circular(30)),
                boxShadow: [
                  BoxShadow(
                      color: Colors.black54, spreadRadius: 0.5, blurRadius: 0.5),
                ],
              ),
              child: CurvedNavigationBar(
                items: cubit.bottomItems,
                height: 50,
                color: test2,
                animationCurve: Curves.easeInOutCubic,
                buttonBackgroundColor: test2,
                backgroundColor: kDarkPlaceholderText,
                index: cubit.currentIndex,
                onTap: (index) => cubit.changeBottomNav(index),
              ),
            ),
          ),
        );
      },
    );
  }
}
