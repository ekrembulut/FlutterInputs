import 'package:flutter/material.dart';

import 'package:flutter/material.dart';

class MeineSlider extends StatefulWidget {
  @override
  State<MeineSlider> createState() => _MeineSliderState();
}

class _MeineSliderState extends State<MeineSlider> {
  double sliderValue = 20.0;
  double _currentSliderValue = 20.0;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      home: Scaffold(
          appBar: AppBar(
            title: Text('Material App Bar'),
          ),
          body: Column(
            children: [
              SizedBox(
                height: 50,
              ),
              Slider(
                  divisions: 90,
                  label: sliderValue.round().toString(),
                  max: 100,
                  value: sliderValue,
                  onChanged: (deger) {
                    sliderValue = deger;
                    setState(() {});
                  }),
              Slider(
                value: _currentSliderValue,
                max: 100,
                divisions: 5,
                label: _currentSliderValue.round().toString(),
                onChanged: (double value) {
                  setState(() {
                    _currentSliderValue = value;
                  });
                },
              ),
            ],
          )),
    );
  }
}
