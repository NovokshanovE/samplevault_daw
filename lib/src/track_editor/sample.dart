import 'dart:io';
import 'dart:math';
import 'dart:typed_data';

import 'package:flutter/material.dart';
import 'package:wav/wav.dart';

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

class SampleFile {
  static Future<void> readSampleFile() async {
    // var logFile = File('newWAV.wav');
    // var sink = logFile.openWrite();
    // await sink.flush();
    // await sink.close();
    var wav = await Wav.readFile("sample.wav");

    // Look at its metadata.
    print(wav.format);
    print(wav.samplesPerSecond);

    // Mess with its audio data.
    // wav.channels;
    for (var chan in wav.channels) {
      // print(chan);
      print(chan.length);
      var new_chan = Float64List(chan.length * 10);
      chan = new_chan;
      print(chan.length);
      for (int i = 0; i < chan.length; ++i) {
        chan[i] = sin(i) * 100; // Decrease the volume.
      }
      wav.channels[0] = chan;
    }
    print(wav.format);
    print(wav.samplesPerSecond);
    print(wav.channels[0].length);
    // Write to another WAV file.
    await wav.writeFile("sample_1.wav");
  }
}
