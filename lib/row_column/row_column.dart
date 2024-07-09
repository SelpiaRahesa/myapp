import 'package:flutter/material.dart';

class BelajarRowColumn extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text('Column 1 Text 1'),
        Column( mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [            
            Text('Row 1 Text 1'),
            Text('Row 1 Text 2'),
          ],
        ), Column( mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [            
            Text('Row 1 Text 1'),
            Text('Row 1 Text 2'),
            Text('Row 1 Text 3'),
          ],
        )
      ],
    );
  }
}