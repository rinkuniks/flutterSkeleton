import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import '../../generated/assets.dart';
import '../../res/color.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      //  title: 'Login',
      //  theme: ThemeData(primarySwatch: Colors.cyan),
      home: HomeView(),
    );
  }
}

class HomeView extends StatelessWidget {
  final _passwordController = TextEditingController();
  final List<String> entries = <String>[
    'A',
    'B',
    'C',
    'D',
    'A',
    'B',
  ];
  final List<int> colorCodes = <int>[
    600,
    500,
    100,
    400,
    600,
    500,
  ];

  Home header = const Home();

  HomeView({super.key}) {
    print("Testing constructions -------------------");
  }

  topCourse() {
    return (const SingleChildScrollView(
      physics: ScrollPhysics(),
      child: Column(
        children: <Widget>[
          Text('Hey'),
        ],
      ),
    ));
  }

  onIconTab() {
    if (kDebugMode) {
      print("====OnIconTab");
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // arguments 1. Is background color true/ false , 2. background color , 3. app title, 4. left image, 5 Right image

      body: SingleChildScrollView(
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          // Header.commonHeader(),
          Padding(
            padding: const EdgeInsets.fromLTRB(20, 40, 20, 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Hi, Bhavesh Raja",
                  style: Theme.of(context).textTheme.titleLarge,
                ),
                Row(
                  children: [
                    InkWell(
                      onTap: () {},
                      child: Container(
                        height: 20,
                        width: 20,
                        margin: const EdgeInsets.only(right: 15),
                        child: SvgPicture.asset(Assets.assetsNotification),
                      ),
                    ),
                    InkWell(
                      child: SizedBox(
                        height: 20,
                        width: 20,
                        child: SvgPicture.asset(Assets.assetsQuestionMark),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
            child: Container(
              margin: const EdgeInsets.only(top: 0, bottom: 10),
              child: Text(
                "Lorem ipsum dolor",
                style: Theme.of(context).textTheme.titleSmall,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Expanded(
                  child: TextField(
                    decoration: InputDecoration(
                      suffixIcon: const Icon(
                        Icons.search,
                        size: 26,
                        color: Colors.black54,
                      ),
                      filled: true,
                      fillColor: const Color(0xFFFFFFFF),
                      isDense: true,
                      contentPadding:
                          const EdgeInsets.symmetric(horizontal: 15.0),
                      /* -- Text and Icon -- */
                      hintText: "Search...",
                      hintStyle: Theme.of(context).textTheme.titleMedium,
                      /* -- Border Styling -- */
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(5.0),
                        borderSide: const BorderSide(
                          width: 0.5,
                          color: Color(0xFFFF0000),
                        ),
                      ),
                      // OutlineInputBorder
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(5.0),
                        borderSide: const BorderSide(
                          width: 0.5,
                          color: Colors.grey,
                        ),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(5.0),
                        borderSide: const BorderSide(
                          width: 0.5,
                          color: Colors.grey,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Container(
            color: const Color.fromARGB(248, 225, 218, 213),
            height: 60,
            margin: const EdgeInsets.only(top: 20, bottom: 20),
            padding: const EdgeInsets.only(
              right: 20,
              left: 20,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  'Finish your profile to get premium\ncontent for free',
                  style: TextStyle(color: Color(0xffF8A848), fontSize: 14),
                ),
                SizedBox(
                    height: 20,
                    width: 20,
                    child: Image.asset('assets/back.png'))
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
            child: Row(
              children: [
                Text(
                  'Chose your other interests',
                  style: Theme.of(context).textTheme.titleLarge,
                )
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(20, 15, 20, 15),
            child: Row(
              children: [
                Container(
                  margin: const EdgeInsets.only(top: 10, bottom: 10),
                  padding: const EdgeInsets.only(
                      left: 20, top: 10, bottom: 10, right: 20),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    color: Colors.grey,
                    boxShadow: const [
                      BoxShadow(
                        color: Colors.grey,
                        spreadRadius: 1,
                      ),
                    ],
                  ),
                  child: Text(
                    'AI',
                    // textScaleFactor: 2,
                    style: Theme.of(context).textTheme.titleMedium,
                  ),
                  // height: 50,
                ),
                Container(
                  margin: const EdgeInsets.only(
                      top: 10, left: 20, right: 20, bottom: 10),
                  padding: const EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    color: const Color(0xff3433F2),
                    boxShadow: const [
                      BoxShadow(
                        color: Color(0xff3433F2),
                        spreadRadius: 1,
                      ),
                    ],
                  ),
                  child: const Text(
                    'Machine Learning',
                    //  textScaleFactor: 2,
                    style: TextStyle(color: AppColors.white, fontSize: 14),
                  ),
                  // height: 50,
                ),
                Container(
                  margin: const EdgeInsets.only(top: 10, bottom: 10),
                  padding: const EdgeInsets.only(
                      left: 10, top: 10, bottom: 10, right: 10),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    color: Colors.grey,
                    boxShadow: const [
                      BoxShadow(
                        color: Colors.grey,
                        spreadRadius: 1,
                      ),
                    ],
                  ),
                  child: Text(
                    'Python',
                    //  textScaleFactor: 2,
                    style: Theme.of(context).textTheme.titleMedium,
                  ),
                  // height: 50,
                ),
              ],
            ),
          ),
          Image.asset(
            'assets/home_banner.png',
            fit: BoxFit.fill,
            height: 200,
            width: double.infinity,
          ),
          Padding(
              padding: const EdgeInsets.fromLTRB(20, 15, 0, 15),
              child: topCourse())
        ]),
      ),
    );
  }
}
