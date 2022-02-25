import 'dart:math' show Random;

import 'package:flutter/material.dart';


class AnimatedScreen extends StatefulWidget {
   
  const AnimatedScreen({Key? key}) : super(key: key);

  @override
  State<AnimatedScreen> createState() => _AnimatedScreenState();
}

class _AnimatedScreenState extends State<AnimatedScreen> {

  // State
  double _width = 50;
  double _height = 50;
  Color _boxColor = Colors.amber;
  BorderRadiusGeometry _borderRadius = BorderRadius.circular(15);

  void changeShape() {
    Random gen = Random();
    setState(() {
      _width = gen.nextInt(300).toDouble() + 50;
      _height = gen.nextInt(300).toDouble() + 50;
      _boxColor = Color.fromRGBO(
        gen.nextInt(255), 
        gen.nextInt(255), 
        gen.nextInt(255),
        1
      );
      _borderRadius = BorderRadius.circular(
        gen.nextInt(90).toDouble() + 10
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Animated'),
      ),
      body: Center(
         child: AnimatedContainer(
           duration: const Duration(milliseconds: 300),
           curve: Curves.easeOutCubic,
           width: _width,
           height: _height,
           decoration: BoxDecoration(
            color: _boxColor,
            borderRadius: _borderRadius
           )
         ),
      ),
      floatingActionButton: FloatingActionButton(
        child: const Icon( Icons.play_arrow, size: 40, ),
        onPressed: changeShape,
      ),
    );
  }
}