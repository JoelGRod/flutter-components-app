import 'package:flutter/material.dart';

import 'package:components_app/shared/themes/main_theme.dart';

class CustomCardTypeTwo extends StatelessWidget {
  const CustomCardTypeTwo({Key? key}) : super(key: key);

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
          const FadeInImage(
            image: NetworkImage('https://thelandscapephotoguy.com/wp-content/uploads/2019/01/landscape%20new%20zealand%20S-shape.jpg'),
            placeholder: AssetImage('assets/imgs/jar-loading.gif'),
            width: double.infinity,
            height: 230,
            fit: BoxFit.cover,
            fadeInDuration: Duration(milliseconds: 1000),
          ),

          Container(
            alignment: AlignmentDirectional.center,
            padding: const EdgeInsets.all(15),
            child: const Text('A beautiful Landscape')
          )
        ],
      ),
    );
  }
}