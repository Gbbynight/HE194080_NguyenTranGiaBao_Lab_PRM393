import 'package:flutter/material.dart';
class MySlider extends StatefulWidget {
  const MySlider({super.key});

  @override
  State<MySlider> createState() => _MySliderState();
}

class _MySliderState extends State<MySlider> {
  var cuValue=0.0;
  void OnchangeValue(){
    setState(() {

    });
  }
  @override
  Widget build(BuildContext context) {
    return Slider(value: cuValue, onChanged: (double value){
      cuValue = value;
    });
  }
}
