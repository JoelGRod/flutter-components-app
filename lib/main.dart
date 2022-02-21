import 'package:flutter/material.dart';

import 'components/screens/screens.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Material App',
        debugShowCheckedModeBanner: false,
        // home: const ListView2Screen(),
        initialRoute: 'home',
        routes: {
          'home': (BuildContext context) => const HomeScreen(),
          'list_view1': (BuildContext context) => const ListView1Screen(),
          'list_view2': (BuildContext context) => const ListView2Screen(),
          'alert': (BuildContext context) => const AlertScreen(),
          'card': (BuildContext context) => const CardScreen(),
        },
    );
  }
}
