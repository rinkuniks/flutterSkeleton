import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'res/components/L10n.dart';
import 'res/components/LocalLang.dart';
import 'routes/routes.dart';
import 'utils/routes/routes_name.dart';
import 'view_model/auth_view_model.dart';
import 'view_model/user_view_model.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await EasyLocalization.ensureInitialized();

  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => LocalLang()),
      ],
      child: EasyLocalization(
        supportedLocales: L10n.all,
        path: 'assets/l10n',
        fallbackLocale: L10n.all[0],
        child: const MyApp(),
      ),
    ),
  );
  // runApp(EasyLocalization(
  //   supportedLocales: L10n.all,
  //   path: 'assets/l10n',
  //   fallbackLocale: L10n.all[0],
  //   child: const MyApp(),
  // ));
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
      return MultiProvider(
          providers: [
            ChangeNotifierProvider(create: (_) => AuthViewModel()),
            ChangeNotifierProvider(create: (_) => UserViewModel()),
          ],
          child: MaterialApp(
            locale: context.locale,
            localizationsDelegates: context.localizationDelegates,
            supportedLocales: context.supportedLocales,
            title: 'Flutter Demo',

            // theme: ThemeData(
            //   primarySwatch: Colors.blue,
            // ),
            // home: HomeScreen(),

            theme: ThemeData(
              brightness: Brightness.light,
              primarySwatch: Colors.orange,
            ),
            darkTheme: ThemeData(
              brightness: Brightness.dark,
            ),

            initialRoute: RoutesName.splash,
            onGenerateRoute: Routes.generateRoute,
          ));
    });
  }
}

// class MyApp extends StatelessWidget {
//   const MyApp({Key? key}) : super(key: key);

//   // This widget is the root of your application.
//   @override
  
//   Widget build(BuildContext context) {
//     // context.setLocale(Locale('hi'));
//     return MultiProvider(
//       providers: [
//         ChangeNotifierProvider(create: (_) => AuthViewModel()),
//         ChangeNotifierProvider(create: (_) => UserViewModel()),
//       ],
//         child: MaterialApp(
//         localizationsDelegates:context.localizationDelegates ,
//         supportedLocales: context.supportedLocales,
//         locale: context.locale,
        
//         debugShowCheckedModeBanner: false,
//         title: 'Flutter Demo',
//         theme: ThemeData(
//           primarySwatch: Colors.blue,
//         ),
//         // home: HomeScreen(),
//         initialRoute: RoutesName.splash,
//         onGenerateRoute: Routes.generateRoute,
//       ),
//     );
//   }
// }
