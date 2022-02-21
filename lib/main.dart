import 'package:flutter/material.dart';

//import 'package:components_app/components/screens/list_view_1_screen.dart';
import 'package:components_app/components/screens/list_view_2_screen.dart';


void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
        title: 'Material App',
        debugShowCheckedModeBanner: false,
        home: ListView2Screen());
  }
}
