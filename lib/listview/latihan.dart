import 'package:flutter/material.dart';

class LatihanListView extends StatelessWidget {
  final List<Map<String, dynamic>> data = [
    {'name' : 'Ujang Balok', 'umur': 38, 'alamat':'Bojong Honey', 
    'photo': [
      'https://picsum.photos/200/300',
      'https://picsum.photos/200',
      'https://picsum.photos/seed/picsum/200/300',
    ]},
    {'name' : 'Mahmud alexander', 'umur' : 28, 'alamat':'Sukalilo',
    'photo': [
      'https://picsum.photos/200/300',
      'https://picsum.photos/200',
      'https://picsum.photos/seed/picsum/200/300',
    ]},
    {'name' : 'Aceng Ferdinand', 'umur': 18, 'alamat':'Heulang Honey', 
    'photo': [
      'https://picsum.photos/200/300',
      'https://picsum.photos/200',
      'https://picsum.photos/seed/picsum/200/300',
    ]},
    {'name' : 'DD Nun', 'umur' : 25, 'alamat':'Pameumpek',
    'photo': [
      'https://picsum.photos/200/300',
      'https://picsum.photos/200',
      'https://picsum.photos/seed/picsum/200/300',
    ]},
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: data.length,
      itemBuilder: (context, index) {
        return Card(
          color: Colors.grey,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Nama : ${(data[index]['name'])}'),
                Text('Umur : ${(data[index]['umur'])}'),
                Text('Alamat : ${(data[index]['alamat'])}'),
                Text('Galeri'),
                SizedBox(
                  height: 100,
                  child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: data[index]['photo']!.length,
                  itemBuilder: (context, imgIndex){
                    return Container(
                      margin: EdgeInsets.only(right:5),
                      child:Image.network(
                      data[index]['photo'][imgIndex],
                      fit:BoxFit.cover,
                      width: 100,
                    ),
                );      
                  }
                ),
                )
              ]
            ),
          )
        );
      }
    );
  }
}