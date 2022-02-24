import 'package:flutter/material.dart';

class AnimatedScreen extends StatefulWidget {
   
  const AnimatedScreen({Key? key}) : super(key: key);

  @override
  State<AnimatedScreen> createState() => _AnimatedScreenState();
}

class _AnimatedScreenState extends State<AnimatedScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Animated'),
      ),
      body: Center(
         child: Container(
           width: 100,
           height: 100,
           decoration: BoxDecoration(
            color: Colors.amber,
            borderRadius: BorderRadius.circular(15)
           )
           
         ),
      ),
    );
  }
}