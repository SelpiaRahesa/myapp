import 'package:flutter/material.dart';

class BelajarColumn extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Text('Ini column 1 Text 1'),
        Text('Ini column 2 Text 2'),
        Text('Ini column 3 Text 3'),
      ],
    );
  }
}