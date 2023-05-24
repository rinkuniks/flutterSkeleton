import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../generated/assets.dart';
import '../../res/color.dart';

void main() {
  runApp(Home());
}

class Home extends StatelessWidget  {
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


  Home Header = Home();
 
  HomeView() {
    print("Testing constructions -------------------");
  }

  topCourse() {
    return (SingleChildScrollView(
      physics: ScrollPhysics(),
      child: Column(
        children: <Widget>[
          Text('Hey'),
        ],
      ),
    ));
  }

    onIconTab(){
print("ty-------------------------");
    }

  @override
  Widget build(BuildContext context) {
    print("Testing constructions ----------4444444444444---------");


    return Scaffold(
      // arguments 1. Is background color true/ false , 2. background color , 3. app title, 4. left image, 5 Right image
      
      body: SingleChildScrollView(
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          // Header.commonHeader(),
          Padding(
            padding: EdgeInsets.fromLTRB(20, 40, 20, 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  "Hi, Bhavesh Raja",
                  style: TextStyle(fontSize: 20, color: Colors.black),
                ),
                Row(
                  children: [
                    InkWell(
                      onTap: () {
                      
                      },
                      child: Container(
                        height: 20,
                        width: 20,
                        margin: EdgeInsets.only(right: 15),
                        child: SvgPicture.asset(Assets.assetsNotification),
                      ),
                    ),
                    InkWell(
                      child: Container(
                        height: 20,
                        width: 20,
                        child:SvgPicture.asset(Assets.assetsQuestionMark),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.fromLTRB(20, 0, 20, 0),
            child: Container(
              margin: EdgeInsets.only(top: 0, bottom: 10),
              child: const Text(
                "Lorem ipsum dolor",
                style: TextStyle(fontSize: 14, color: Colors.grey),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.fromLTRB(20, 0, 20, 0),
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
                      hintStyle: const TextStyle(
                        fontSize: 18,
                        color: Color(0xFFB3B1B1),
                      ),

                      /* -- Border Styling -- */
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(5.0),
                        borderSide: const BorderSide(
                          width: 0.5,
                          color: Color(0xFFFF0000),
                        ),
                      ), // OutlineInputBorde
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
            color: Color.fromARGB(248, 225, 218, 213),
            height: 60,
            margin: EdgeInsets.only(top: 20, bottom: 20),
            padding: const EdgeInsets.only(
              right: 20,
              left: 20,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  'Finesh your profile to get premium\ncontent for free',
                  style: TextStyle(fontSize: 14, color: Color(0xffF8A848)),
                ),
                Container(
                    height: 20,
                    width: 20,
                    child: Image.asset('assets/back.png'))
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.fromLTRB(20, 0, 20, 0),
            child: Row(
              children: [
                Text(
                  'Chose your other interests',
                  style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.bold,
                      color: Colors.black),
                )
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.fromLTRB(20, 15, 20, 15),
            child: Row(
              children: [
                Container(
                  margin: EdgeInsets.only(top: 10, bottom: 10),
                  padding:
                      EdgeInsets.only(left: 20, top: 10, bottom: 10, right: 20),
                  child: Text(
                    'AI',
                    // textScaleFactor: 2,
                    style: TextStyle(color: Colors.black, fontSize: 14),
                  ),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    color: Colors.grey,
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey,
                        spreadRadius: 1,
                      ),
                    ],
                  ),
                  // height: 50,
                ),
                Container(
                  margin:
                      EdgeInsets.only(top: 10, left: 20, right: 20, bottom: 10),
                  padding:
                      EdgeInsets.only(left: 10, top: 10, bottom: 10, right: 10),
                  child: Text(
                    'Machine Learning',
                    //  textScaleFactor: 2,
                    style: TextStyle(color: Colors.white, fontSize: 14),
                  ),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    color: Color(0xff3433F2),
                    boxShadow: [
                      BoxShadow(
                        color: Color(0xff3433F2),
                        spreadRadius: 1,
                      ),
                    ],
                  ),
                  // height: 50,
                ),
                Container(
                  margin: EdgeInsets.only(top: 10, bottom: 10),
                  padding:
                      EdgeInsets.only(left: 10, top: 10, bottom: 10, right: 10),
                  child: Text(
                    'Paython',
                    //  textScaleFactor: 2,
                    style: TextStyle(color: Colors.black, fontSize: 14),
                  ),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    color: Colors.grey,
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey,
                        spreadRadius: 1,
                      ),
                    ],
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
              padding: EdgeInsets.fromLTRB(20, 15, 0, 15), child: topCourse())
        ]),
      ),
    );
  }
}
