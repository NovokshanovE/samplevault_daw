import 'package:flutter/material.dart';

class Sample extends StatefulWidget {
  const Sample({
    super.key,
  });

  @override
  State<Sample> createState() => _SampleState();
}

class _SampleState extends State<Sample> {
  String _sampleName = "";

  String get sampleName => _sampleName;
  double _height = 0;

  double get height => _height;

  double _width = 0;

  double get width => _width;

  SampleModifires _modifires = SampleModifires();

  SampleModifires get modifires => _modifires;

  set modifires(SampleModifires value) {
    _modifires = value;
  }

  set width(double value) {
    _width = value;
  }

  set height(double value) {
    _height = value;
  }

  set sampleName(String value) {
    _sampleName = value;
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: _height,
      width: _width,
    );
  }
}

class SampleModifires {}
