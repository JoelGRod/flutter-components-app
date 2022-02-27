import 'package:flutter/material.dart';

import 'package:components_app/shared/themes/themes.dart';

class SliderScreen extends StatefulWidget {
  const SliderScreen({Key? key}) : super(key: key);

  @override
  State<SliderScreen> createState() => _SliderScreenState();
}

class _SliderScreenState extends State<SliderScreen> {
  double _sliderValue = 100;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Slider Screen'),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(
              height: 30,
            ),
            Slider.adaptive(
                min: 0,
                max: 400,
                value: _sliderValue,
                activeColor: MainTheme.primaryColor,
                divisions: 10,
                onChanged: (value) {
                  setState(() {
                    _sliderValue = value;
                  });
                }),
            Image(
              image: const NetworkImage(
                'http://i.imgur.com/GAOosRW.png'
              ),
              fit: BoxFit.contain,
              width: _sliderValue,  
            ),
            const SizedBox(height: 100,)
          ],
        ),
      ),
    );
  }
}
