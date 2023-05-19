// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:mvvm/base/base_page.dart';
import 'package:mvvm/generated/assets.dart';
import 'package:mvvm/res/color.dart';
import 'package:mvvm/res/components/AppTextField.dart';
import 'package:mvvm/res/components/round_button.dart';
import 'package:mvvm/utils/routes/routes_name.dart';
import 'package:mvvm/utils/utils.dart';
import 'package:mvvm/view_model/auth_view_model.dart';
import 'package:provider/provider.dart';

/// Created by Sawan Kumar on 12/05/23.

class SignUpView extends BasePage {
  const SignUpView({Key? key}) : super(key: key);

  @override
  State<SignUpView> createState() => _SignUpViewState();
}

class _SignUpViewState extends  BasePageState<SignUpView> with Base{
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
   return SingleChildScrollView(
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
                                  Assets.assetsBack,
                                  height: 20,
                                  width: 20,
                                ),
                              ),
                              Container(
                                margin: EdgeInsets.only(
                                    top: MediaQuery.of(context).size.height *
                                        0.05),
                                child: Center(
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    // mainAxisSize: MainAxisSize.min,
                                    //mainAxisAlignment: MainAxisAlignment.center,
                                    children: <Widget>[
                                      const Text(
                                        "Create an account",
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
                                       /// input field for name 
                                      Container(
                                        margin: EdgeInsets.only(
                                            top: MediaQuery.of(context)
                                                    .size
                                                    .height *
                                                0.05),
                                        child: Text(
                                          'Name',
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
                                        //hintText: 'Name',
                                        title: '',
                                        onSaved: (input) =>
                                            _phoneNo = input.toString(),
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
                                        onSaved: (input) =>
                                            _phoneNo = input.toString(),
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
                                          'Mobile',
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
                                        // hintText: 'Mobile',
                                        keyboardType: TextInputType.phone,
                                        onSaved: (input) =>
                                            _phoneNo = input.toString(),
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
                                        fieldKey: _passwordFieldKey,
                                        //  hintText: 'Password',
                                        obSecure: true,
                                        isPassword: true,
                                        onSaved: (input) =>
                                            _password = input.toString(),
                                      ),
                                      Container(
                                        margin: EdgeInsets.only(top: 40),
                                        child: RoundButton(
                                            title: 'Sign Up',
                                           // loading: authViewModel.loading,
                                            onPressed: () {
                                              if (emailC.text.isEmpty) {
                                                Utils.flushBarError(
                                                    'please Enter email',
                                                    context);
                                              } else if (passwordC
                                                  .text.isEmpty) {
                                                Utils.flushBarError(
                                                    'please Enter password',
                                                    context);
                                              } else if (passwordC.text.length <
                                                  6) {
                                                Utils.flushBarError(
                                                    'password length is less than 5',
                                                    context);
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
                                        margin: EdgeInsets.only(
                                            top: 15, bottom: 20),
                                        color: AppColors.grayLine,
                                        height: 1,
                                      ),
                                      Center(
                                        child: Text(
                                          'or sign up with',
                                          style: TextStyle(
                                              color: Colors.grey,
                                              fontWeight: FontWeight.w400,
                                              fontSize: 16),
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
                                                borderRadius:
                                                    BorderRadius.circular(10),
                                                // color: Colors.blue,
                                              ),
                                              child: Center(
                                                  child: Container(
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
                            ])
                            )
                            );
  }
}

  // @override
  // Widget build(BuildContext context) {
  //   final authViewModel = Provider.of<AuthViewModel>(context);
  //   final height = MediaQuery.of(context).size.height * 1;
  //   return Scaffold(
  //       body: SafeArea(
  //           child: Container(
  //               height: MediaQuery.of(context).size.height,
  //               //  color: Colors.black,
  //               child: SingleChildScrollView(
  //                   child: Padding(
  //                       padding: EdgeInsets.fromLTRB(25, 30, 25, 10),
  //                       child: Column(
  //                           crossAxisAlignment: CrossAxisAlignment.start,
  //                           children: [
  //                             InkWell(
  //                               onTap: () {
  //                                 Navigator.pop(context);
  //                               },
  //                               child: Image.asset(
  //                                 Assets.assetsBack,
  //                                 height: 20,
  //                                 width: 20,
  //                               ),
  //                             ),
  //                             Container(
  //                               margin: EdgeInsets.only(
  //                                   top: MediaQuery.of(context).size.height *
  //                                       0.05),
  //                               child: Center(
  //                                 child: Column(
  //                                   crossAxisAlignment:
  //                                       CrossAxisAlignment.start,
  //                                   // mainAxisSize: MainAxisSize.min,
  //                                   //mainAxisAlignment: MainAxisAlignment.center,
  //                                   children: <Widget>[
  //                                     const Text(
  //                                       "Create an account",
  //                                       style: TextStyle(
  //                                           color: Colors.black,
  //                                           fontWeight: FontWeight.bold,
  //                                           fontSize: 26),
  //                                     ),
  //                                     Container(
  //                                       margin: EdgeInsets.only(top: 10),
  //                                       child: const Text(
  //                                         "Welcome to ExcelR, please enter your details to continue",
  //                                         style: TextStyle(
  //                                             color: Colors.grey, fontSize: 12),
  //                                       ),
  //                                     ),
  //                                      /// input field for name 
  //                                     Container(
  //                                       margin: EdgeInsets.only(
  //                                           top: MediaQuery.of(context)
  //                                                   .size
  //                                                   .height *
  //                                               0.05),
  //                                       child: Text(
  //                                         'Name',
  //                                         style: TextStyle(
  //                                             color: Colors.grey,
  //                                             fontSize: 16,
  //                                             fontWeight: FontWeight.w400),
  //                                       ),
  //                                     ),
  //                                     AppTextField(
  //                                       textInputAction: TextInputAction.next,
  //                                       validator: (input) {},
  //                                       // maxLength: limitLength,
  //                                       //fieldKey: _phoneNoFieldKey,
  //                                       //hintText: 'Name',
  //                                       title: '',
  //                                       onSaved: (input) =>
  //                                           _phoneNo = input.toString(),
  //                                       onChanged: (input) {
  //                                         // if (Utility.isOnlyNumber(input.toString())) {
  //                                         //   limitLength = 10;
  //                                         // } else {
  //                                         //   limitLength = 40;
  //                                         // }
  //                                         setState(() {});
  //                                       },
  //                                     ),
  //                                     const SizedBox(
  //                                       height: 15,
  //                                     ),
  //                                      /// input field for email
  //                                     Container(
  //                                       margin: EdgeInsets.only(top: 10),
  //                                       child: Text(
  //                                         'Email',
  //                                         style: TextStyle(
  //                                             color: Colors.grey,
  //                                             fontSize: 16,
  //                                             fontWeight: FontWeight.w400),
  //                                       ),
  //                                     ),
  //                                     AppTextField(
  //                                       textInputAction: TextInputAction.next,
  //                                       validator: (input) {},
  //                                       // maxLength: limitLength,
  //                                       //fieldKey: _phoneNoFieldKey,
  //                                       // hintText: 'Email',
  //                                       onSaved: (input) =>
  //                                           _phoneNo = input.toString(),
  //                                       onChanged: (input) {
  //                                         // if (Utility.isOnlyNumber(input.toString())) {
  //                                         //   limitLength = 10;
  //                                         // } else {
  //                                         //   limitLength = 40;
  //                                         // }
  //                                         setState(() {});
  //                                       },
  //                                     ),
  //                                     const SizedBox(
  //                                       height: 15,
  //                                     ),

  //                                      /// input field for mobile 
  //                                     Container(
  //                                       margin: EdgeInsets.only(top: 10),
  //                                       child: Text(
  //                                         'Mobile',
  //                                         style: TextStyle(
  //                                             color: Colors.grey,
  //                                             fontSize: 16,
  //                                             fontWeight: FontWeight.w400),
  //                                       ),
  //                                     ),
  //                                     AppTextField(
  //                                       textInputAction: TextInputAction.next,
  //                                       validator: (input) {},
  //                                       // maxLength: limitLength,
  //                                       //fieldKey: _phoneNoFieldKey,
  //                                       // hintText: 'Mobile',
  //                                       keyboardType: TextInputType.phone,
  //                                       onSaved: (input) =>
  //                                           _phoneNo = input.toString(),
  //                                       onChanged: (input) {
  //                                         // if (Utility.isOnlyNumber(input.toString())) {
  //                                         //   limitLength = 10;
  //                                         // } else {
  //                                         //   limitLength = 40;
  //                                         // }
  //                                         setState(() {});
  //                                       },
  //                                     ),
  //                                     const SizedBox(
  //                                       height: 15,
  //                                     ),
  //                                      /// input field for password 
  //                                     Container(
  //                                       margin: EdgeInsets.only(top: 10),
  //                                       child: Text(
  //                                         'Password',
  //                                         style: TextStyle(
  //                                             color: Colors.grey,
  //                                             fontSize: 16,
  //                                             fontWeight: FontWeight.w400),
  //                                       ),
  //                                     ),
  //                                     AppTextField(
  //                                       textInputAction: TextInputAction.done,
  //                                       validator: (input) {
  //                                         // String? validatorString =
  //                                         //     Validation.passwordValidator(input, context);

  //                                         // if (validatorString.isNotEmpty) {
  //                                         //   return validatorString;
  //                                         // }
  //                                         // return null;
  //                                       },
  //                                       fieldKey: _passwordFieldKey,
  //                                       //  hintText: 'Password',
  //                                       obSecure: true,
  //                                       isPassword: true,
  //                                       onSaved: (input) =>
  //                                           _password = input.toString(),
  //                                     ),
  //                                     Container(
  //                                       margin: EdgeInsets.only(top: 40),
  //                                       child: RoundButton(
  //                                           title: 'Sign Up',
  //                                           loading: authViewModel.loading,
  //                                           onPressed: () {
  //                                             if (emailC.text.isEmpty) {
  //                                               Utils.flushBarError(
  //                                                   'please Enter email',
  //                                                   context);
  //                                             } else if (passwordC
  //                                                 .text.isEmpty) {
  //                                               Utils.flushBarError(
  //                                                   'please Enter password',
  //                                                   context);
  //                                             } else if (passwordC.text.length <
  //                                                 6) {
  //                                               Utils.flushBarError(
  //                                                   'password length is less than 5',
  //                                                   context);
  //                                             } else {
  //                                               Map data = {
  //                                                 "email": emailC.text,
  //                                                 "password": passwordC.text,
  //                                               };

  //                                               authViewModel.signUpApi(
  //                                                   data, context);
  //                                               authViewModel.setLoading(true);
  //                                               if (kDebugMode) {
  //                                                 print('Abi Hit');
  //                                               }
  //                                             }
  //                                           }),
  //                                     ),
  //                                     SizedBox(height: 10),
  //                                     Container(
  //                                       margin: EdgeInsets.only(
  //                                           top: 15, bottom: 20),
  //                                       color: AppColors.grayLine,
  //                                       height: 1,
  //                                     ),
  //                                     Center(
  //                                       child: Text(
  //                                         'or sign up with',
  //                                         style: TextStyle(
  //                                             color: Colors.grey,
  //                                             fontWeight: FontWeight.w400,
  //                                             fontSize: 16),
  //                                       ),
  //                                     ),

  //                                     Container(
  //                                       margin: EdgeInsets.only(top: 20),
  //                                       child: InkWell(
  //                                         onTap: () {
  //                                           print("Sign up click");
  //                                         },
  //                                         child: Container(
  //                                             height: 45,
  //                                             decoration: BoxDecoration(
  //                                               border: Border.all(
  //                                                   color: AppColors.grayLine,
  //                                                   width: 1.0,
  //                                                   style: BorderStyle.solid),
  //                                               borderRadius:
  //                                                   BorderRadius.circular(10),
  //                                               // color: Colors.blue,
  //                                             ),
  //                                             child: Center(
  //                                                 child: Container(
  //                                               height: 22,
  //                                               width: 22,
  //                                               child: Image.asset(Assets.assetsGoogle),
  //                                             ))),
  //                                       ),
  //                                     ),
  //                                     // TextButton(
  //                                     //     onPressed: () {
  //                                     //       Navigator.pushNamed(
  //                                     //           context, RoutesName.login);
  //                                     //     },
  //                                     //     child: Text(
  //                                     //         'Already have an Account? Login Here')
  //                                     //         )
  //                                   ],
  //                                 ),
  //                               ),
  //                             ),
  //                           ])
  //                           )
  //                           )
  //                           )
  //                           ));
  // }
  
 