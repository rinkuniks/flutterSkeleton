import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../../base/base_page.dart';
import '../../generated/assets.dart';
import '../../generated/l10n.dart';
import '../../res/components/AppTextField.dart';
import '../../res/components/LocalLang.dart';
import '../../res/components/round_button.dart';
import '../../utils/routes/routes_name.dart';
import '../../view_model/auth_view_model.dart';

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
    S str = S.of(context);
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
                            str.welcome_back,
                            style: Theme.of(context).textTheme.titleLarge,
                          ),
                          Container(
                            margin: const EdgeInsets.only(top: 10),
                            child: Text(
                              str.welcome_to_excelR,
                              style:
                              Theme.of(context).textTheme.labelSmall,
                            ),
                          ),
                          const SizedBox(
                            height: 20,
                          ),

                          /// input field for Email
                          Container(
                            margin: const EdgeInsets.only(top: 10),
                            child: Text(
                              str.email,
                              style: Theme.of(context).textTheme.labelMedium
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
                            },
                          ),
                          const SizedBox(
                            height: 15,
                          ),

                          /// input field for password
                          Container(
                            margin: const EdgeInsets.only(top: 10),
                            child: Text(
                              str.password,
                              style: Theme.of(context).textTheme.labelMedium
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
                                title: str.login,
                                // bgColor: false,
                                // loading: authViewModel.loading,
                                onPressed: () {
                                  /*  Provider.of<LocalLang>(context, listen: false)
                                      .setLocal(
                                    "en",
                                  ); */
                                 Navigator.pushNamed(context, RoutesName.bottomNavigation);
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
                                  str.forgot_password,
                                  textAlign: TextAlign.center,
                                  style: Theme.of(context).textTheme.displayMedium
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
