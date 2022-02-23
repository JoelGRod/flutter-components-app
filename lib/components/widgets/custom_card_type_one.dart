import 'package:flutter/material.dart';

import '../../shared/themes/themes.dart';

class CustomCardTypeOne extends StatelessWidget {
  const CustomCardTypeOne({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        children: <Widget>[
          const ListTile(
            leading: Icon( 
              Icons.photo_album_outlined, 
              color: MainTheme.primaryColor, 
            ),
            title: Text('Title'),
            subtitle: Text('In Lorem ullamco labore quis. Sint nostrud aute sint quis eiusmod ipsum pariatur nostrud adipisicing culpa mollit. Quis labore magna duis non ullamco mollit tempor. Ex qui non veniam sint. Do commodo commodo excepteur velit qui tempor consequat occaecat eiusmod ad ea.'),
          ),

          Padding(
            padding: const EdgeInsets.only(right: 5),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                TextButton(
                  onPressed: () {}, 
                  child: const Text('Ok'),
                  // style: TextButton.styleFrom(primary: Colors.indigo),
                ),
                TextButton(
                  onPressed: () {}, 
                  child: const Text('Cancel'),
                  // style: TextButton.styleFrom(primary: Colors.indigo),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}