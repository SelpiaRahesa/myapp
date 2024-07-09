import 'package:flutter/material.dart';

class LatihanRowColumn extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        width:double.infinity,
        height:60,
        color:Colors.blueGrey,
        child:Row( mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Column( mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Icon(Icons.phone),
                Text('call'),
              ],
            ),Column( mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Icon(Icons.route),
                Text('Route'),
              ],
            ),Column( mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Icon(Icons.share),
                Text('Share'),
              ],
            ),
          ],
        ),
      ),
    );
  }
}