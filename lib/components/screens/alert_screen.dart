import 'package:flutter/material.dart';

class AlertScreen extends StatelessWidget {
  const AlertScreen({Key? key}) : super(key: key);

  void displayDialog(BuildContext context) {
    showDialog(
        barrierDismissible: false,
        context: context,
        builder: (context) {
          return AlertDialog(
            elevation: 5,
            title: const Text('Title'),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(15)
            ),
            content: Column(
              mainAxisSize: MainAxisSize.min,
              children: const [
                Text('This is the content', textAlign: TextAlign.center,),
                SizedBox(height: 30),
                FlutterLogo(size: 50,)
              ]
            ),
            actions: [
              TextButton(
                onPressed: () => Navigator.pop(context), 
                child: const Text("Cancel")
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
            onPressed: () => displayDialog(context),
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
