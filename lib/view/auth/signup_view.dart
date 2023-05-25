// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../../base/base_page.dart';
import '../../generated/assets.dart';
import '../../generated/l10n.dart';
import '../../res/color.dart';
import '../../res/components/AppTextField.dart';
import '../../res/components/round_button.dart';
import '../../utils/utils.dart';

/// Created by Sawan Kumar on 12/05/23.

class SignUpView extends BasePage {
  const SignUpView({Key? key}) : super(key: key);

  @override
  State<SignUpView> createState() => _SignUpViewState();
}

class _SignUpViewState extends BasePageState<SignUpView> with Base {
  final ValueNotifier<bool> _obsecurePassword = ValueNotifier<bool>(true);
  TextEditingController emailC = TextEditingController();
  TextEditingController passwordC = TextEditingController();
  final _passwordFieldKey = GlobalKey<FormFieldState<String>>();
  late String _password, _phoneNo;

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    emailC.dispose();
    passwordC.dispose();
    _obsecurePassword.dispose();
  }

  @override
  bool isAppBarNeeded() {
    // TODO: implement isAppBarNeeded
    return false;
  }

  @override
  Widget body() {
    S s = S.of(context);
    return SingleChildScrollView(
        child: Padding(
            padding: EdgeInsets.fromLTRB(25, 30, 25, 10),
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              InkWell(
                onTap: () {
                  Navigator.pop(context);
                },
                child: Image.asset(
                  Assets.assetsBack,
                  height: 20,
                  width: 20,
                ),
              ),
              Container(
                margin: EdgeInsets.only(
                    top: MediaQuery.of(context).size.height * 0.05),
                child: Center(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    // mainAxisSize: MainAxisSize.min,
                    //mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text(
                        s.create_an_account,
                        style: Theme.of(context).textTheme.titleLarge,
                      ),
                      Container(
                        margin: EdgeInsets.only(top: 10),
                        child: Text(
                          s.welcome_to_excelR,
                          style: Theme.of(context).textTheme.labelLarge,
                        ),
                      ),

                      /// input field for name
                      Container(
                        margin: EdgeInsets.only(
                            top: MediaQuery.of(context).size.height * 0.05),
                        child: Text(
                          s.name,
                          style: Theme.of(context).textTheme.labelLarge,
                        ),
                      ),
                      AppTextField(
                        textInputAction: TextInputAction.next,
                        validator: (input) {},
                        // maxLength: limitLength,
                        //fieldKey: _phoneNoFieldKey,
                        //hintText: 'Name',
                        title: '',
                        onSaved: (input) => _phoneNo = input.toString(),
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

                      /// input field for email
                      Container(
                        margin: EdgeInsets.only(top: 10),
                        child: Text(
                          s.email,
                          style: Theme.of(context).textTheme.labelLarge,
                        ),
                      ),
                      AppTextField(
                        textInputAction: TextInputAction.next,
                        validator: (input) {},
                        // maxLength: limitLength,
                        //fieldKey: _phoneNoFieldKey,
                        // hintText: 'Email',
                        onSaved: (input) => _phoneNo = input.toString(),
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

                      /// input field for mobile
                      Container(
                        margin: EdgeInsets.only(top: 10),
                        child: Text(
                          s.mobile,
                          style: Theme.of(context).textTheme.labelLarge,
                        ),
                      ),
                      AppTextField(
                        textInputAction: TextInputAction.next,
                        validator: (input) {},
                        // maxLength: limitLength,
                        //fieldKey: _phoneNoFieldKey,
                        // hintText: 'Mobile',
                        keyboardType: TextInputType.phone,
                        onSaved: (input) => _phoneNo = input.toString(),
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
                          s.password,
                          style: Theme.of(context).textTheme.labelLarge,
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
                        fieldKey: _passwordFieldKey,
                        //  hintText: 'Password',
                        obSecure: true,
                        isPassword: true,
                        onSaved: (input) => _password = input.toString(),
                      ),
                      Container(
                        margin: EdgeInsets.only(top: 40),
                        child: RoundButton(
                            title: s.sign_up,
                            // loading: authViewModel.loading,
                            onPressed: () {
                              if (emailC.text.isEmpty) {
                                Utils.flushBarError(
                                    'please Enter email', context);
                              } else if (passwordC.text.isEmpty) {
                                Utils.flushBarError(
                                    'please Enter password', context);
                              } else if (passwordC.text.length < 6) {
                                Utils.flushBarError(
                                    'password length is less than 5', context);
                              } else {
                                Map data = {
                                  "email": emailC.text,
                                  "password": passwordC.text,
                                };

                                if (kDebugMode) {
                                  print('Abi Hit');
                                }
                              }
                            }),
                      ),
                      SizedBox(height: 10),
                      Container(
                        margin: EdgeInsets.only(top: 15, bottom: 20),
                        color: AppColors.grayLine,
                        height: 1,
                      ),
                      Center(
                        child: Text(
                          s.sign_up_with,
                          style: Theme.of(context).textTheme.labelLarge,
                        ),
                      ),

                      Container(
                        margin: EdgeInsets.only(top: 20),
                        child: InkWell(
                          onTap: () {
                            print("Sign up click");
                          },
                          child: Container(
                              height: 45,
                              decoration: BoxDecoration(
                                border: Border.all(
                                    color: AppColors.grayLine,
                                    width: 1.0,
                                    style: BorderStyle.solid),
                                borderRadius: BorderRadius.circular(10),
                                // color: Colors.blue,
                              ),
                              child: Center(
                                  child: SizedBox(
                                height: 22,
                                width: 22,
                                child: Image.asset(Assets.assetsGoogle),
                              ))),
                        ),
                      ),
                      // TextButton(
                      //     onPressed: () {
                      //       Navigator.pushNamed(
                      //           context, RoutesName.login);
                      //     },
                      //     child: Text(
                      //         'Already have an Account? Login Here')
                      //         )
                    ],
                  ),
                ),
              ),
            ])));
  }
}
