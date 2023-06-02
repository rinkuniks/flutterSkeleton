import 'package:flutter/material.dart';
import '../../res/components/round_button.dart';
import '../../utils/routes/routes_name.dart';

class OnBoarding extends StatefulWidget {
  const OnBoarding({Key? key}) : super(key: key);

  @override
  State<OnBoarding> createState() => _OnBoardingState();
}

class _OnBoardingState extends State<OnBoarding> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          padding: const EdgeInsets.all(20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                  'TELL US YOUR INTERESTS',
                  style: Theme.of(context).textTheme.labelSmall
              ),
              const SizedBox(
                height: 20,
              ),
              //Heading
              Text(
                  'Select courses that you are interested in?',
                  style: Theme.of(context).textTheme.titleLarge
              ),
              //Create a ListView using ListViewBuilder for Selection
              //Button Bottom
              Expanded(
                child: Container(
                  alignment: Alignment.bottomCenter,
                  margin: EdgeInsets.only(
                      top: MediaQuery.of(context).size.height * 0.05),
                  child: RoundButton(
                      title: 'Continue',
                      // bgColor: false,
                      // loading: authViewModel.loading,
                      onPressed: () {
                        Navigator.pushNamed(context, RoutesName.bottomNavigation);
                      }),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
