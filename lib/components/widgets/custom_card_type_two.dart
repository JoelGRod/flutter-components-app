import 'package:flutter/material.dart';

import 'package:components_app/shared/themes/main_theme.dart';

class CustomCardTypeTwo extends StatelessWidget {

  final String imgUrl;
  final String? cardText;

  const CustomCardTypeTwo({
    Key? key, 
    required this.imgUrl, 
    this.cardText
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      clipBehavior: Clip.antiAlias, // Force rounded corners
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20)
      ), // Rounded corners control
      elevation: 10,
      shadowColor: MainTheme.primaryColor.withOpacity(0.6),
      child: Column(
        children: <Widget>[
          FadeInImage(
            image: NetworkImage(imgUrl),
            placeholder: const AssetImage('assets/imgs/jar-loading.gif'),
            width: double.infinity,
            height: 230,
            fit: BoxFit.cover,
            fadeInDuration: const Duration(milliseconds: 1000),
          ),

          if(cardText != null)
            Container(
              alignment: AlignmentDirectional.center,
              padding: const EdgeInsets.all(15),
              child: Text(cardText!)
              // child: Text(cardText ?? 'No Title')
            )
        ],
      ),
    );
  }
}