import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AlertScreen extends StatelessWidget {
  const AlertScreen({Key? key}) : super(key: key);

  void displayDialogIOS(BuildContext context) {
    showCupertinoDialog(
      barrierDismissible: false,
      context: context, 
      builder: (context) {
        return CupertinoAlertDialog(
          title: const Text(
            'Title', 
            textAlign: TextAlign.center
          ),
          content: Column(
            mainAxisSize: MainAxisSize.min,
            children: const [
              Text('This is the content', textAlign: TextAlign.center,),
              SizedBox(height: 15),
              FlutterLogo(size: 100,)
            ]
          ),
          actions: [
            TextButton(
              onPressed: () => Navigator.pop(context), 
              child: const Text(
                "Cancel", 
                style: TextStyle(
                  color: Colors.red
                ),
              )
            ),
            TextButton(
              onPressed: () => Navigator.pop(context), 
              child: const Text("Ok")
            )
          ],
        );
      }
    );
  }

  void displayDialogAndroid(BuildContext context) {
    showDialog(
        barrierDismissible: false,
        context: context,
        builder: (context) {
          return AlertDialog(
            elevation: 5,
            title: const Text(
              'Title', 
              textAlign: TextAlign.center
            ),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(15)
            ),
            content: Column(
              mainAxisSize: MainAxisSize.min,
              children: const [
                Text('This is the content', textAlign: TextAlign.center,),
                SizedBox(height: 15),
                FlutterLogo(size: 100,)
              ]
            ),
            actions: [
              TextButton(
                onPressed: () => Navigator.pop(context), 
                child: const Text(
                  "Cancel", 
                  style: TextStyle(
                    color: Colors.red
                  )
                )
              ),
              TextButton(
                onPressed: () => Navigator.pop(context), 
                child: const Text("Ok")
              )
            ],
          );
        });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: ElevatedButton(
            onPressed: () => Platform.isAndroid 
                              ? displayDialogAndroid(context) 
                              : displayDialogIOS(context),
            style: ElevatedButton.styleFrom(
              primary: Colors.deepOrange.shade600,
              shape: const StadiumBorder(),
              elevation: 100,
              shadowColor: Colors.deepOrange.shade200,
            ),
            child: const Padding(
              padding: EdgeInsets.symmetric(vertical: 15, horizontal: 20),
              child: Text(
                'Show Alert',
                style: TextStyle(fontSize: 16),
              ),
            ),
      )),
      floatingActionButton: FloatingActionButton(
          child: const Icon(Icons.close),
          onPressed: () => Navigator.pop(context)
      ),
    );
  }
}
