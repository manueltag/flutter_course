import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_course/models/animal.dart';
import 'package:flutter_course/widgets/widgets.dart';

class TextControl extends StatefulWidget {
  final String defaultText;
  final String defaultImage;

  TextControl(
      {this.defaultText = 'This is the default text', this.defaultImage = ''});

  @override
  State<StatefulWidget> createState() => _TextControlState();
}

class _TextControlState extends State<TextControl> {
  final _random = new Random();
  final List<Animal> words = [
    Animal(name: "Lamb", image: "assets/lamb.jpg"),
    Animal(name: "Lovebird", image: "assets/lovebird.jpg"),
    Animal(name: "Buffalo", image: "assets/buffalo.jpg"),
    Animal(name: "Basilisk", image: "assets/basilisk.jpg"),
    Animal(name: "Finch", image: "assets/finch.jpg"),
    Animal(name: "Elephant", image: "assets/elephant.jpg"),
  ];

  String _textOutput;
  String _imageOutput;

  @override
  void initState() {
    super.initState();
    _textOutput = widget.defaultText;
    _imageOutput = widget.defaultImage;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: SizedBox.expand(
          child: Card(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                AnimalOutput(
                  textOutput: _textOutput,
                  imageOutput: _imageOutput,
                ),
                RaisedButton(
                  child: Text('Change'),
                  onPressed: () {
                    _setOutput();
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  void _setOutput() {
    setState(() {
      Animal animal = words[_random.nextInt(words.length)];
      _textOutput = animal.name;
      _imageOutput = animal.image;
    });
  }
}
