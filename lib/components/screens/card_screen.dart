import 'package:flutter/material.dart';

import 'package:components_app/components/widgets/widgets.dart';


class CardScreen extends StatelessWidget {
   
  const CardScreen({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Cards'),
      ),
      body: ListView(
        padding: const EdgeInsets.symmetric(
          vertical: 20, horizontal: 20
        ),
        children: const <Widget>[
          CustomCardTypeOne(),
          SizedBox(height: 10),
          CustomCardTypeTwo()
        ],
      ),
    );
  }
}