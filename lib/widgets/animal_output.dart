import 'package:flutter/material.dart';

class AnimalOutput extends StatelessWidget {
  final String textOutput;
  final String imageOutput;

  AnimalOutput({this.textOutput, this.imageOutput});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.only(bottom: 8.0),
            child: Text(
              textOutput,
              style: Theme.of(context).textTheme.title,
            ),
          ),
          imageOutput.length > 0
              ? Image.asset(imageOutput, width: 200, height: 200)
              : Text('No available image'),
        ],
      ),
    );
  }
}
