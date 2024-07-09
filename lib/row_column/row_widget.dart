import 'package:flutter/material.dart';

class BelajarRow extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Text('Ini row 1 isi 1'),
        Text('Ini row 2 isi 2'),
        Text('Ini row 3 isi 3'),
      ],
    );
  }
}