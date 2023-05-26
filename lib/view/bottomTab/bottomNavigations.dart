import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../../generated/assets.dart';
import '../../res/color.dart';
import 'homeScreen.dart';
import 'messageSereen.dart';
import 'myCoursesScreen.dart';
import 'notificationScreen.dart';
import 'profileScreen.dart';

class BottomNavigation extends StatelessWidget {

  const BottomNavigation({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
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

 final _pageOptions = [
  const Home(),
  const MyCourse(),
  const MessageScreen(),
  const NotificationScreen(),
  const Profile(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pageOptions[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        items:  <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon:  SvgPicture.asset(Assets.assetsHomeIcon, color: AppColors.grey,),
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
        onTap: _onItemTapped,
        type: BottomNavigationBarType.fixed, // Icons and labels animation  
      ),
    );
  }
}
