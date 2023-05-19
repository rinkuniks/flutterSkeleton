

import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:mvvm/base/base_page.dart';
import 'package:mvvm/l10n/locale_keys.g.dart';

import '../generated/assets.dart';
import '../res/color.dart';
import '../res/components/round_button.dart';
import '../utils/routes/routes_name.dart';

class Intro extends BasePage {
  const Intro({Key? key}) : super(key: key);
  //static const routeName = '/intro';

  @override
  State<Intro> createState() => IntroState();
}

class IntroState extends BasePageState<Intro> with Base {
  final PageController _pageController = PageController(initialPage: 0);
  int pageIndex = 0;
  int _activePage = 0;
  final List<Widget> _list = <Widget>[
    Center(
        child: Pages(
      text:
          LocaleKeys.intro_title.tr(),
      imgPath: Assets.assetsIntro,
    )),
    Center(
        child: Pages(
      text:  LocaleKeys.into_title1.tr(),
      imgPath: Assets.assetsIntro1,
    )),
    Center(
        child: Pages(
      text:  LocaleKeys.into_title2.tr(),
      imgPath:Assets.assetsIntro,
    )),
  ];
  
  // @override
  // void initState() {
  //   super.initState();
  // }

  @override
  bool isAppBarNeeded() {
    // TODO: implement isAppBarNeeded
    return false;
  }

  @override
  Widget body() {
    return Column(
      children: <Widget>[
        Container(
          margin:
              EdgeInsets.only(top: MediaQuery.of(context).size.height * 0.05),
          child:  Center(
            child: Text(LocaleKeys.app_name.tr(),
              style: const TextStyle(color: AppColors.blueText, fontSize: 28),
            ),
          ),
        ),
        SizedBox(
          height: MediaQuery.of(context).size.height * 0.5,
          //   color: Colors.black,
          child: PageView.builder(
            controller: _pageController,
            allowImplicitScrolling: true,
            //  children: _list,
            scrollDirection: Axis.horizontal,
            reverse: false,
            physics: const BouncingScrollPhysics(),
            // controller: controller,
            onPageChanged: (int pages) {
              setState(() {
                _activePage = pages;
              });
            },
            itemCount: _list.length,
            itemBuilder: (BuildContext context, int index) {
              return _list[index % _list.length];
            },
          ),
        ),
       Row(
         mainAxisAlignment: MainAxisAlignment.center,
         children: List<Widget>.generate(
             _list.length,
             (index) => Padding(
                   padding: const EdgeInsets.symmetric(horizontal: 5),
                   child: InkWell(
                     onTap: () {
                       _pageController.animateToPage(index,
                           duration: const Duration(milliseconds: 300),
                           curve: Curves.easeIn);
                     },
                     child: CircleAvatar(
                       radius: 7,
                       backgroundColor: _activePage == index
                           ? AppColors.activeDot
                           : AppColors.deActiveDot,
                     ),
                   ),
                 )),
       ),
        Container(
          margin:
              EdgeInsets.only(top: MediaQuery.of(context).size.height * 0.1),
          child: RoundButton(
              title: 'Sign Up',
             // bgColor: true,                     
              // loading: authViewModel.loading,
              onPressed: () {
                Navigator.pushNamed(context, RoutesName.signUp);
              }),
        ),
        Container(
          margin:
              EdgeInsets.only(top: MediaQuery.of(context).size.height * 0.02),
          child: RoundButton(
              title: 'Log In',
              bgColor: true,
              // loading: authViewModel.loading,
              onPressed: () {
                 Navigator.pushNamed(context, RoutesName.login);
              }),
        )
      ],
    );
  }

  // @override
  // Widget build(BuildContext context) {
  //   return Scaffold(
  //       body: SafeArea(
  //           child: Column(
  //     children: <Widget>[
  //       Container(
  //         margin:
  //             EdgeInsets.only(top: MediaQuery.of(context).size.height * 0.05),
  //         child: Center(
  //           child: Text(
  //             "ExcelR",
  //             style: TextStyle(color: AppColors.blueText, fontSize: 28),
  //           ),
  //         ),
  //       ),
  //       Container(
  //         height: MediaQuery.of(context).size.height * 0.5,
  //         //   color: Colors.black,
  //         child: PageView.builder(
  //           controller: _pageController,
  //           allowImplicitScrolling: true,
  //           //  children: _list,
  //           scrollDirection: Axis.horizontal,
  //           reverse: false,
  //           physics: BouncingScrollPhysics(),
  //           // controller: controller,
  //           onPageChanged: (int pages) {
  //             setState(() {
  //               _activePage = pages;
  //             });
  //           },
  //           itemCount: _list.length,
  //           itemBuilder: (BuildContext context, int index) {
  //             return _list[index % _list.length];
  //           },
  //         ),
  //       ),
  //      Container(
  //           //  color: Colors.black54,
  //           child: Row(
  //             mainAxisAlignment: MainAxisAlignment.center,
  //             children: List<Widget>.generate(
  //                 _list.length,
  //                 (index) => Padding(
  //                       padding: const EdgeInsets.symmetric(horizontal: 5),
  //                       child: InkWell(
  //                         onTap: () {
  //                           _pageController.animateToPage(index,
  //                               duration: const Duration(milliseconds: 300),
  //                               curve: Curves.easeIn);
  //                         },
  //                         child: CircleAvatar(
  //                           radius: 7,
  //                           backgroundColor: _activePage == index
  //                               ? AppColors.activeDot
  //                               : AppColors.deActiveDot,
  //                         ),
  //                       ),
  //                     )),
  //           ),
  //         ),
  //       Container(all
  //         margin:
  //             EdgeInsets.only(top: MediaQuery.of(context).size.height * 0.1),
  //         child: RoundButton(
  //             title: 'Sign Up',
  //            // bgColor: true,
  //             // loading: authViewModel.loading,
  //             onPressed: () {
  //               Navigator.pushNamed(context, RoutesName.signUp);
  //             }),
  //       ),
  //       Container(
  //         margin:
  //             EdgeInsets.only(top: MediaQuery.of(context).size.height * 0.02),
  //         child: RoundButton(
  //             title: 'Log In',
  //             bgColor: true,
  //             // loading: authViewModel.loading,
  //             onPressed: () {
  //                Navigator.pushNamed(context, RoutesName.login);
  //             }),
  //       )
  //     ],
  //   )));
  // }
  

}

class Pages extends StatelessWidget {
  final text;
  // final color;
  final imgPath;
  Pages({this.text, this.imgPath});
  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;
    return Container(
      //  color: color,
      margin: EdgeInsets.only(top: screenHeight * 0.04),
      child: Center(
        child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Image.asset(
                imgPath,
                fit: BoxFit.fill,
                height: screenHeight * 0.3,
                width: screenWidth * 0.7,
              ),
              Container(
                margin: EdgeInsets.only(
                    top: screenHeight * 0.03,
                    left: screenHeight * 0.06,
                    right: screenHeight * 0.06),
                child: Text(
                  text,
                  textAlign: TextAlign.center,
                  style: const TextStyle(
                      fontSize: 14,
                      color: AppColors.black,
                      fontWeight: FontWeight.w500),
                ),
              ),
            ]
            ),
      ),
    );
  }
}
