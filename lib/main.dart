import 'package:flutter/material.dart';
import 'package:mvvm/res/color.dart';
import 'package:mvvm/utils/routes/routes.dart';
import 'package:mvvm/utils/routes/routes_name.dart';
import 'package:mvvm/view_model/auth_view_model.dart';
import 'package:mvvm/view_model/user_view_model.dart';
import 'package:provider/provider.dart';

import 'base/theme/DarkThemeProvider.dart';

/// Created by Sawan Kumar on 12/05/23.

void main() {
  runApp(MyApp());
}


// class MyApp extends StatelessWidget {
//   MyApp({Key? key}) : super(key: key);
//   DarkThemeProvider themeChangeProvider = new DarkThemeProvider();
//
//   // This widget is the root of your application.
//
// }
class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  DarkThemeProvider themeChangeProvider = new DarkThemeProvider();

  @override
  void initState() {
    super.initState();
    getCurrentAppTheme();
  }

  void getCurrentAppTheme() async {
    themeChangeProvider.darkTheme =
    await themeChangeProvider.darkThemePreference.getTheme();
  }

  @override
  Widget build(BuildContext context) {
    return
      ChangeNotifierProvider(
        create: (_) {
          return themeChangeProvider;
        },
        child: Consumer<DarkThemeProvider>(
          builder: (BuildContext context, value, Widget? child){
            return MultiProvider(
              providers: [
                ChangeNotifierProvider(create: (_) => AuthViewModel()),
                ChangeNotifierProvider(create: (_) => UserViewModel()),
              ],
              child: MaterialApp(
                debugShowCheckedModeBanner: false,
                title: 'Flutter Demo',
                theme: AppColors.themeData(themeChangeProvider.darkTheme, context),
// home: HomeScreen(),
                initialRoute: RoutesName.splash,
                onGenerateRoute: Routes.generateRoute,
              ),
            );
          },

        ),);
  }
}