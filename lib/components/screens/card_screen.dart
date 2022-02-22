import 'package:components_app/shared/themes/main_theme.dart';
import 'package:flutter/material.dart';

class CardScreen extends StatelessWidget {
   
  const CardScreen({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Cards'),
      ),
      body: ListView(
        children: <Card>[
          Card(
            child: Column(
              children: const [
                ListTile(
                  leading: Icon( 
                    Icons.photo_album_outlined, 
                    color: MainTheme.primaryColor, 
                  ),
                  title: Text('Title'),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}