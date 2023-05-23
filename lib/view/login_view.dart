
import 'package:flutter/material.dart';
import 'package:mvvm/res/color.dart';
import 'package:provider/provider.dart';

import '../base/base_page.dart';
import '../base/theme/DarkThemeProvider.dart';
import '../generated/assets.dart';
import '../generated/l10n.dart';

import '../res/components/AppTextField.dart';
import '../res/components/LocalLang.dart';
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

  @override
  Widget body() {
    final authViewModel = Provider.of<AuthViewModel>(context);
    final height = MediaQuery.of(context).size.height * 1;
    S s = S.of(context);
    return SizedBox(
      height: MediaQuery.of(context).size.height,
      //  color: Colors.black,
      child: SingleChildScrollView(
          child: Padding(
              padding: const EdgeInsets.fromLTRB(25, 30, 25, 10),
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
                            s.welcome_back,
                            style: AppColors.welcomeTextStyleBold
                          ),
                          Container(
                            margin: const EdgeInsets.only(top: 10),
                            child: Text(
                              s.welcome_to_excelR,
                              style:
                                  AppColors.secondaryGreyTextStyleBold,
                            ),
                          ),
                          const SizedBox(
                            height: 20,
                          ),

                          /// input field for Email
                          Container(
                            margin: const EdgeInsets.only(top: 10),
                            child: Text(
                              s.email,
                              style: AppColors.secondaryGreyTextStyleBold
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
                            margin: const EdgeInsets.only(top: 10),
                            child: Text(
                              s.password,
                              style: AppColors.secondaryGreyTextStyleBold
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
                                title: s.login,
                                // bgColor: false,
                                // loading: authViewModel.loading,
                                onPressed: () {
                                  /*  Provider.of<LocalLang>(context, listen: false)
                                      .setLocal(
                                    "en",
                                  ); */
                                  Provider.of<LocalLang>(context, listen: false)
                                      .setThemeMode(ThemeMode.light);
                                  // context.setLocale(Locale('hi'));
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
                                  // Provider.of<LocalLang>(context, listen: false)
                                  //     .setLocal(
                                  //   "hi",
                                  // );
                                  Provider.of<LocalLang>(context, listen: false)
                                      .setThemeMode(ThemeMode.dark);
                                },
                                child: Text(
                                  s.forgot_password,
                                  textAlign: TextAlign.center,
                                  style: AppColors.secondaryTextStyle,
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
