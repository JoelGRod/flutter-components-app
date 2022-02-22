import 'package:flutter/material.dart';

import 'package:components_app/router/app_routes.dart';
import 'package:components_app/shared/themes/themes.dart';


void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Material App',
        debugShowCheckedModeBanner: false,

        /* -------------- ROUTES ---------------------- */
        // home: const ListView2Screen(),

        // Main app Routes (clean - refactorized)
        initialRoute: AppRoutes.initialRoute,
        routes: AppRoutes.getMenuOptions(),
        // Extra Routes (Routes that do not exist)
        onGenerateRoute: (settings) => AppRoutes.onGenerateRoute(settings), 

        // Main app routes (dirty)
        // initialRoute: 'home',
        // routes: {
        //   'home'      : (BuildContext context) => const HomeScreen(),
        //   'list_view1': (BuildContext context) => const ListView1Screen(),
        //   'list_view2': (BuildContext context) => const ListView2Screen(),
        //   'alert'     : (BuildContext context) => const AlertScreen(),
        //   'card'      : (BuildContext context) => const CardScreen(),
        // },
        // onGenerateRoute: (settings) {
        //   return MaterialPageRoute(
        //     builder: (context) => const AlertScreen()
        //   );
        // }, // Extra Routes (Routes that do not exist)

        /* -------------- END ROUTES ---------------------- */

        /* -------------- GLOBAL THEME -------------------- */
        theme: MainTheme.darkTheme,

    );
  }
}
