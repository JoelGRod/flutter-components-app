import 'package:flutter/material.dart';

import 'package:components_app/shared/themes/themes.dart';

class SliderScreen extends StatefulWidget {
  const SliderScreen({Key? key}) : super(key: key);

  @override
  State<SliderScreen> createState() => _SliderScreenState();
}

class _SliderScreenState extends State<SliderScreen> {
  double _sliderValue = 100;
  bool _isSliderEnabled = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Slider Screen'),
      ),
      body: Column(
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
              onChanged: _isSliderEnabled 
                ? (value) => setState(() => _sliderValue = value )
                : null
              ),

          Checkbox(
              value: _isSliderEnabled,
              activeColor: MainTheme.primaryColor,
              onChanged: (value) => setState(() => _isSliderEnabled = value ?? true)
          ),
          Switch.adaptive(
              value: _isSliderEnabled,
              activeColor: MainTheme.primaryColor,
              onChanged: ( value ) => setState(() => _isSliderEnabled = value)
          ),
          CheckboxListTile(
              title: const Text('Enable Slider Checkbox'),
              activeColor: MainTheme.primaryColor,
              value: _isSliderEnabled, 
              onChanged: ( value ) => setState(() => _isSliderEnabled = value ?? true)
          ),
          SwitchListTile.adaptive(
              title: const Text('Enable Slider Switch'),
              activeColor: MainTheme.primaryColor,
              value: _isSliderEnabled, 
              onChanged: ( value ) => setState(() => _isSliderEnabled = value)
          ),
          const AboutListTile(),

          Expanded(
            child: SingleChildScrollView(
              child: Image(
                image: const NetworkImage(
                    'http://i.imgur.com/GAOosRW.png'
                    // 'https://i.pinimg.com/474x/01/ef/3f/01ef3fc689814a67bfbd33e66029d8c1--sandman-vertigo-western-comics.jpg'
                ),
                fit: BoxFit.contain,
                width: _sliderValue,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
