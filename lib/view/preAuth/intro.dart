import 'package:ExcelR/res/color.dart';
import 'package:flutter/material.dart';
import '../../base/base_page.dart';
import '../../generated/assets.dart';
import '../../generated/l10n.dart';
import '../../res/components/round_button.dart';
import '../../utils/routes/routes_name.dart';

class Intro extends BasePage {
  const Intro({Key? key}) : super(key: key);

  @override
  State<Intro> createState() => IntroState();
}

class IntroState extends BasePageState<Intro> with Base {
  final PageController _pageController = PageController(initialPage: 0);
  int pageIndex = 0;
  int _activePage = 0;

  List<Widget> _list(BuildContext context) {
    S str = S.of(context);
    return [
      Center(
          child: Pages(
        text: str.intro_title,
        imgPath: Assets.assetsIntro,
      )),
      Center(
          child: Pages(
        text: str.into_title1,
        imgPath: Assets.assetsIntro1,
      )),
      Center(
          child: Pages(
        text: str.into_title2,
        imgPath: Assets.assetsIntro,
      )),
    ];
  }

  @override
  bool isAppBarNeeded() {
    return false;
  }

  @override
  Widget body() {
    S str = S.of(context);
    return Column(
      children: <Widget>[
        Container(
          margin:
              EdgeInsets.only(top: MediaQuery.of(context).size.height * 0.05),
          child: Center(
            child: Text(
              str.app_name,
              style: Theme.of(context).textTheme.displayLarge
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
            itemCount: _list(context).length,
            itemBuilder: (BuildContext context, int index) {
              return _list(context).elementAt(index);
            },
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: List<Widget>.generate(
              _list(context).length,
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
              title: str.sign_up,
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
              title: str.login,
              bgColor: true,
              // loading: authViewModel.loading,
              onPressed: () {
                Navigator.pushNamed(context, RoutesName.login);
              }),
        ),
      ],
    );
  }
}

class Pages extends StatelessWidget {
  final text;
  // final color;
  final imgPath;
  const Pages({super.key, this.text, this.imgPath});
  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;
    return Container(
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
                  style: Theme.of(context).textTheme.titleMedium,
                ),
              ),
            ]),
      ),
    );
  }
}
