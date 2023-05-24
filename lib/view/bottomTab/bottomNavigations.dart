import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:mvvm/generated/l10n.dart';

import '../../generated/assets.dart';
import '../../res/color.dart';
import 'homeScreen.dart';
import 'messageSereen.dart';
import 'myCoursesScreen.dart';
import 'notificationScreen.dart';
import 'profileScreen.dart';

void main() => runApp(BottomNavi());

class BottomNavi extends StatelessWidget {
  // const MyApp({super.key});

  static const String _title = 'Flutter Code Sample';

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: _title,
      home: MyStatefulWidget(),
    );
  }
}

class MyStatefulWidget extends StatefulWidget {
  const MyStatefulWidget({super.key});

  @override
  State<MyStatefulWidget> createState() => _MyStatefulWidgetState();
}

class _MyStatefulWidgetState extends State<MyStatefulWidget> {
  int _selectedIndex = 0;
  static const TextStyle optionStyle =
      TextStyle(fontSize: 30, fontWeight: FontWeight.bold);

 final _pageOptions = [
  Home(),
  MyCourse(),
  MessageSereen(),
  NotificationScreen(),
  Profile(),
  ];

  void _onItemTapped(int index) {
    print(index);
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    //S str = S.of(context);
  //  S str = S.of(context);
    return Scaffold(
      // appBar: AppBar(
      //   title: const Text('BottomNavigationBar Sample'),
      // ),
      body: _pageOptions[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        items:  <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon:  SvgPicture.asset(Assets.assetsHomeIcon, color: Colors.grey,),
            label: 'Home',
            activeIcon: SvgPicture.asset(Assets.assetsHomeIcon,color: AppColors.blueText),

          ),
          BottomNavigationBarItem(
            icon:  SvgPicture.asset(Assets.assetsMyCourses),
            activeIcon: SvgPicture.asset(Assets.assetsMyCourses,color: AppColors.blueText),
            label: 'My Course',
          ),
          BottomNavigationBarItem(
            icon:  SvgPicture.asset(Assets.assetsMessage),
            activeIcon: SvgPicture.asset(Assets.assetsMessage,color: AppColors.blueText),
            label: 'Message',
          ),
          BottomNavigationBarItem(
            icon:  SvgPicture.asset(Assets.assetsNotification),
            activeIcon: SvgPicture.asset(Assets.assetsNotification,color: AppColors.blueText),
            label: 'Notifications',
          ),
          BottomNavigationBarItem(
            icon:  SvgPicture.asset(Assets.assetsProfile),
            activeIcon: SvgPicture.asset(Assets.assetsProfile,color: AppColors.blueText),
            label: 'Profile',
          ),
        ],
        currentIndex: _selectedIndex,
        enableFeedback: false,
        showSelectedLabels: true, // Selected labels hide/show
        showUnselectedLabels: true, // Unselected labels hide/show
        selectedItemColor: AppColors.blueText,
      //  selectedItemColor: Colors.amber[800],
      //  unselectedItemColor: Colors.black,
        onTap: _onItemTapped,
        type: BottomNavigationBarType.fixed, // Icons and labels animation  
      ),
    );
  }
}
