import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
  theme: ThemeData(
    primaryColor: Color.fromARGB(255, 250, 203, 189),
  ),
  home: ListSeparated(),
));

class ListSeparated extends StatelessWidget {

var androidVersions = [

  "Android Cupcake",
  "Android Donut",
  "Android Eclair",
  "Android Froyo",
  "Android Gingerbread",
  "Android Honeycomh",
  "Android Ice Cream Sandwich",
  "Android Jelly Bean",
  "Android Kitkat",
  "Android Lollipop",
  "Android Marshmallow",
  "Android Nougat",
  "Android Oreo",
  "Android Pie"
];

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      separatorBuilder:(context, index){
        return Container(
          height: 10,
          color: Colors.black,
        );
      },
        itemCount: androidVersions.length,
        itemBuilder: (context, index){
          return Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(index.toString() +"-"+ androidVersions[index]),
          );
        },
    );
  }
}