import 'package:flutter/material.dart';
import 'package:myapp/artis/about_artis.dart';
import 'package:myapp/artis/artis.dart';
import 'package:myapp/artis/home_artis.dart';
import 'package:myapp/container_widget.dart';
import 'package:myapp/listview/latihan.dart';
import 'package:myapp/listview/list_basic.dart';
import 'package:myapp/listview/list_builder.dart';
import 'package:myapp/listview/list_separated.dart';
import 'package:myapp/row_column/column_widget.dart';
import 'package:myapp/row_column/latihan.dart';
import 'package:myapp/row_column/latihan2.dart';
import 'package:myapp/row_column/row_column.dart';
import 'package:myapp/row_column/row_widget.dart';
import 'package:myapp/screens/home_screen.dart';
import 'package:myapp/screens/about_screen.dart';
import 'package:myapp/screens/wisata_screen.dart';
import 'package:myapp/screens/detail_wisata_screen.dart';
void main(){
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        'home': (context)=> const HomeArtis(),
        '/about': (context)=> const AboutArtis(),
        '/artis': (context)=>  Artis(),
      },
      initialRoute: "home",
      home: Scaffold(
      appBar : AppBar(
        backgroundColor: Color.fromARGB(249, 245, 230, 198),
        centerTitle: true,
      ),
      body: HomeArtis(),
    ),
    );
  }
}