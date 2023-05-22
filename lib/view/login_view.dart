// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../base/base_page.dart';
import '../base/theme/DarkThemeProvider.dart';
import '../generated/assets.dart';
import '../l10n/locale_keys.g.dart';
import '../res/components/AppTextField.dart';
import '../res/components/round_button.dart';
import '../view_model/auth_view_model.dart';

class LoginView extends BasePage {
  const LoginView({Key? key}) : super(key: key);

  @override
  State<LoginView> createState() => _LoginViewState();
}

class _LoginViewState extends BasePageState<LoginView> with Base {
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
  String topBarTitle() {
    return "Login";
  }

  @override
  String leftIcon() {
    return Assets.assetsTopbarCross;
  }

  @override
  bool isAppBarNeeded() {
    return false;
  }

//   DarkThemeProvider themeChangeProvider = new DarkThemeProvider();
// @override
// void initState() {
//   super.initState();
//   getCurrentAppTheme();
// }
//
// void getCurrentAppTheme() async {
//   themeChangeProvider.darkTheme =
//       await themeChangeProvider.darkThemePreference.getTheme();
//       print(themeChangeProvider);
// }

  @override
  Widget body() {
    final authViewModel = Provider.of<AuthViewModel>(context);
    final height = MediaQuery.of(context).size.height * 1;
    return SizedBox(
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
                      Navigator.pop(context, true);
                      //Navigator.pop(context);
                    },
                    child: Image.asset(
                      Assets.assetsBack,
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
                          Text(
                            LocaleKeys.welcome_back.tr(),
                            style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                                fontSize: 26),
                          ),
                          Container(
                            margin: EdgeInsets.only(top: 10),
                            child: Text(LocaleKeys.welcome_to_excelR.tr(),
                              style: TextStyle(
                                  color:Colors.grey,
                                  fontSize: 12),
                            ),
                          ),
                          const SizedBox(
                            height: 20,
                          ),

                          /// input field for Email
                          Container(
                            margin: EdgeInsets.only(top: 10),
                            child: Text(
                              LocaleKeys.email.tr(),
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
                              LocaleKeys.password.tr(),
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
                                top: MediaQuery.of(context).size.height * 0.05),
                            child: RoundButton(
                                title: LocaleKeys.login.tr(),
                                // bgColor: false,
                                // loading: authViewModel.loading,
                                onPressed: () {
                                  //  Provider.of<LocalLang>(context, listen: false) .setLocal("en");
                                  context.setLocale(Locale('hi'));
                                  //   Navigator.pushNamed(context, RoutesName.signUp);
                                  //  Navigator.pushNamed(context, RoutesName.videoPlayer);
                                }),
                          ),
                          Container(
                            margin: EdgeInsets.only(
                                top: MediaQuery.of(context).size.height * 0.03),
                            child: Center(
                              child: InkWell(
                                onTap: () {
                                  //  Provider.of<LocalLang>(context, listen: false).setLocal("hi");
                                  context.setLocale(Locale('en'));
                                },
                                child: Text(LocaleKeys.forgot_password.tr(),
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                      color: Color(0xff651FFF), fontSize: 16),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ))),
    );
  }
}
