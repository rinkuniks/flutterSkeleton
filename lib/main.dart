import 'dart:developer';
import 'package:ExcelR/res/theme/theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:provider/provider.dart';
import 'generated/l10n.dart';
import 'res/components/LocalLang.dart';
import 'routes/routes.dart';
import 'utils/routes/routes_name.dart';
import 'view_model/auth_view_model.dart';
import 'view_model/user_view_model.dart';
//import 'package:firebase_core/firebase_core.dart';
void main() async {
//  await Firebase.initializeApp();
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => LocalLang()),
        ChangeNotifierProvider(create: (_) => AuthViewModel()),
        ChangeNotifierProvider(create: (_) => UserViewModel()),
      ],
      child: Consumer<LocalLang>(builder: (context, localLang, child) {
        return const MyApp();
      }),
    ),
  );
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  void initState() {
    Provider.of<LocalLang>(context, listen: false).getLocal();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Consumer<LocalLang>(builder: (context, localLang, child) {
      return MaterialApp(
        locale: localLang.local,
        localizationsDelegates: const [
          S.delegate,
          GlobalMaterialLocalizations.delegate,
          GlobalWidgetsLocalizations.delegate,
          GlobalCupertinoLocalizations.delegate,
        ],
        supportedLocales: S.delegate.supportedLocales,
        themeMode: ThemeMode.system,
        theme: AppTheme.lightTheme,
        darkTheme: AppTheme.darkTheme,
        // themeMode: localLang.themeMode,
        // theme: MyColors.themeData(false, context),
        // darkTheme: MyColors.themeData(true, context),
        initialRoute: RoutesName.splash,
        onGenerateRoute: Routes.generateRoute,
      );
    });
  }
}
