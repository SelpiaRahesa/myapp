import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
  theme: ThemeData(
    primaryColor: Color.fromARGB(255, 250, 203, 189),
  ),
  home: ListBuilder(),
));

class ListBuilder extends StatelessWidget {

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
    return Scaffold(
      appBar: AppBar(
        title: Text("Flutter ListView"),
      ),
      body: ListView.separated(
        separatorBuilder: (context, index) {
          return Divider(
            color: Colors.grey,
          );
        },
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(index.toString() +"-"+ androidVersions[index]),
          );
        },
        itemCount: androidVersions.length,
      ),
    );
  }
}