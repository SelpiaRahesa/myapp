import 'package:flutter/material.dart';

class BelajarContainer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width:double.infinity,
      height:double.infinity,
      margin:EdgeInsets.all(10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        image: DecorationImage(
          image: NetworkImage('https://media.istockphoto.com/id/1002339224/id/vektor/kartun-latar-belakang-putri-duyung-dengan-ikan-batuan-karang-bintang-laut-gurita-kuda-laut.jpg?s=170667a&w=0&k=20&c=eN8HaZjLbQd4phV3MNiwctEESfNojE4o2t1YnfRZBHw='),
          fit: BoxFit.cover,
        ),
        color: Colors.amberAccent,
      ),
      child: Center(
      child: Text(
      "The Cute Mermaid",
      style: TextStyle(
      fontSize:24,
      fontWeight: FontWeight.bold,
      color:Colors.white, 
      ),
      ),
      ),
    );
  }
}