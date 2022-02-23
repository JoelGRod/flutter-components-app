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
          CustomCardTypeTwo(
            cardText: 'A Beautiful Landscape I', 
            imgUrl: 'https://iso.500px.com/wp-content/uploads/2014/06/W4A2827-1-3000x2000.jpg',
          ),
          SizedBox(height: 10),
          CustomCardTypeTwo(
            cardText: 'A Beautiful Landscape II', 
            imgUrl: 'https://www.superprof.co.uk/blog/wp-content/uploads/2018/02/landscape-photography-tutorials.jpg',
          ),
          SizedBox(height: 10),
          CustomCardTypeTwo(
            cardText: 'A Beautiful Landscape III', 
            imgUrl: 'https://cdn1.epicgames.com/ue/product/Screenshot/1-1920x1080-a58e6c53fee218623cb26ba39786d1e5.jpg?resize=1&w=1920',
          ),
          
        ],
      ),
    );
  }
}