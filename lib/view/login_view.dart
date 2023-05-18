// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:mvvm/generated/assets.dart';
import 'package:mvvm/res/components/AppTextField.dart';
import 'package:mvvm/res/components/round_button.dart';
import 'package:mvvm/utils/routes/routes_name.dart';
import 'package:mvvm/utils/utils.dart';
import 'package:mvvm/view_model/auth_view_model.dart';
import 'package:provider/provider.dart';

class LoginView extends StatefulWidget {
  const LoginView({Key? key}) : super(key: key);

  @override
  State<LoginView> createState() => _LoginViewState();
}

class _LoginViewState extends State<LoginView> {
  final ValueNotifier<bool> _obsecurePassword = ValueNotifier<bool>(true);
  TextEditingController emailC = TextEditingController();
  TextEditingController passwordC = TextEditingController();
  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    emailC.dispose();
    passwordC.dispose();
    _obsecurePassword.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final authViewModel = Provider.of<AuthViewModel>(context);
    final height = MediaQuery.of(context).size.height * 1;
    return Scaffold(
      body: SafeArea(
        child: Container(
          height: MediaQuery.of(context).size.height,
          //  color: Colors.black,
          child: SingleChildScrollView(
              child: Padding(
                  padding: EdgeInsets.fromLTRB(25, 30, 25, 10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      InkWell(
                        onTap: () {
                          Navigator.pop(context);
                        },
                        child: Image.asset(
                          R.back,
                          height: 20,
                          width: 20,
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(
                            top: MediaQuery.of(context).size.height * 0.2),
                        child: Center(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Text(
                                "Welcome back",
                                style: TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 26),
                              ),
                              Container(
                                margin: EdgeInsets.only(top: 10),
                                child: const Text(
                                  "Welcome to ExcelR, please enter your details to continue",
                                  style: TextStyle(
                                      color: Colors.grey, fontSize: 12),
                                ),
                              ),
                              const SizedBox(
                                height: 20,
                              ),
                                /// input field for Email
                              Container(
                                margin: EdgeInsets.only(top: 10),
                                child: Text(
                                  'Email',
                                  style: TextStyle(
                                      color: Colors.grey,
                                      fontSize: 16,
                                      fontWeight: FontWeight.w400),
                                ),
                              ),
                              AppTextField(
                                textInputAction: TextInputAction.next,
                                validator: (input) {},
                                // maxLength: limitLength,
                                //fieldKey: _phoneNoFieldKey,
                                // hintText: 'Email',
                                onSaved: (input) => {},
                                //  _phoneNo = input.toString()

                                onChanged: (input) {
                                  // if (Utility.isOnlyNumber(input.toString())) {
                                  //   limitLength = 10;
                                  // } else {
                                  //   limitLength = 40;
                                  // }
                                  setState(() {});
                                },
                              ),
                              const SizedBox(
                                height: 15,
                              ),
                              /// input field for password 
                              Container(
                                margin: EdgeInsets.only(top: 10),
                                child: Text(
                                  'Password',
                                  style: TextStyle(
                                      color: Colors.grey,
                                      fontSize: 16,
                                      fontWeight: FontWeight.w400),
                                ),
                              ),

                              AppTextField(
                                  textInputAction: TextInputAction.done,
                                  validator: (input) {
                                    // String? validatorString =
                                    //     Validation.passwordValidator(input, context);

                                    // if (validatorString.isNotEmpty) {
                                    //   return validatorString;
                                    // }
                                    // return null;
                                  },
                                  // fieldKey: _passwordFieldKey,
                                  //  hintText: 'Password',
                                  obSecure: true,
                                  isPassword: true,
                                  onSaved: (input) => {}
                                  //_password = input.toString(),
                                  ),
                              Container(
                                margin: EdgeInsets.only(
                                    top: MediaQuery.of(context).size.height *
                                        0.05),
                                child: RoundButton(
                                    title: 'Log In',
                                    // bgColor: false,
                                    // loading: authViewModel.loading,
                                    onPressed: () {
                                       Navigator.pushNamed(context, RoutesName.videoPlayer);
                                    }),
                              ),
                              Container(
                                margin: EdgeInsets.only(
                                    top: MediaQuery.of(context).size.height *
                                        0.03),
                                child: const Center(
                                  child: Text(
                                    'Forgot your password?',
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                        color: Color(0xff651FFF), fontSize: 16),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ))),
        ),
      ),
    );
  }
}
