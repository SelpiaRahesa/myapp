import 'package:flutter/material.dart';
import 'package:myapp/screens/detail_wisata_screen.dart';
import 'detail_artis.dart';

class Artis extends StatelessWidget {
  final List<Map<String, dynamic>> artisData = [
    {
      "nama": "Kangta",
      "debut": "1996",
      "image": "assets/images/kangtaaaa.jpg",
      "gallery": [
        "assets/images/Kangta.jpg",
        "assets/images/kangta1.jpg",
        "assets/images/kangta2.jpg"
      ],
      "desc": "Ahn Chil-Hyun lahir 10 Oktober 1979 dengan nama panggung Kangta. Ia adalah penyanyi pop dan R&B Korea Selatan. Pertama kali, ia menjadi pemimpin penyanyi di boyband H.O.T. dan menjadi penyanyi solo pada tahun 2001."
    },
    {
      "nama": "Lucas",
      "debut": "2020",
      "image": "assets/images/lucas.webp",
      "gallery": [
        "assets/images/lucas1.jpg",
        "assets/images/lucas2.webp",
        "assets/images/lucas3.jpg",
      ],
      "desc": "Wong Yuk Hei, Huang Xuxi atau Lucas Wong adalah seorang penyanyi keturunan Tionghoa-Thai di bawah kontrak SM Entertainment. Ia adalah anggota grup vokal laki-laki NCT sub-unit NCT U dan WayV, serta anggota supergroup Korea, SuperM",
    },
    {
      "nama": "NCT 127",
      "debut": "2017",
      "image": "assets/images/nct127.jpg",
      "gallery": [
        "assets/images/nct1271.jpg",
        "assets/images/nct1272.jpg",
        "assets/images/nct1273.jpg",
      ],
      "desc": "NCT 127 adalah sub-unit kedua dari grup vokal pria Korea Selatan NCT yang dibentuk oleh SM Entertainment Nama unit mereka merupakan kombinasi dari akronim Neo Culture Technology dan angka 127 yang mewakili koordinat bujur kota Seoul"
    },
    {
      "nama":"NCT Dream",
      "debut": "2016",
      "image": "assets/images/nct.webp",
      "gallery": [
        "assets/images/nct1.jpeg",
        "assets/images/nct2.webp",
        "assets/images/nct3.webp",
      ],
      "desc": "NCT Dream adalah sub-unit ketiga dari boy band asal Korea Selatan NCT, yang khusus beranggotakan remaja dengan usia belasan tahun. Pada awalnya, sub-unit ini memiliki sistem kelulusan di mana anggota yang melampaui usia 20 akan keluar, tapi pada 2020, sistem ini diganti dan menjadikan NCT Dream sebagai unit tetap NCT"
    },
    {
      "nama": "WayV",
      "debut": "2019",
      "image": "assets/images/wayv.webp",
      "gallery": [
        "assets/images/watv1.webp",
        "assets/images/wayv2.jpeg",
        "assets/images/wayv3.jpg",
      ],
      "desc": "Wayv adalah grup vocal pria asal Tiongkok yang merupakan sub- unit keempat unit yang berbasis di Tiongkok dari NCT dan dikelola oleh sub-label Tiongkok SM Entertaiment, Label V."
    }
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Artis SM Entertaiment'),
        backgroundColor: Colors.blue,
      ),
      body: SafeArea(
        child: Container(
          height: double.infinity,
          width: double.infinity,
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage("assets/images/bgartis.jpg"),
              fit: BoxFit.cover,
            ),
          ),
          child: ListView.builder(
            itemCount: artisData.length,
            itemBuilder: (context, index) {
              return GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => DetailArtis(
                        nama: artisData[index]["nama"],
                        debut: artisData[index]["debut"],
                        image: artisData[index]["image"],
                        gallery: artisData[index]["gallery"],
                        desc: artisData[index]["desc"],
                      ),
                    ),
                  );
                },
                child: Container(
                  alignment: Alignment.bottomLeft,
                  height: 200,
                  margin: EdgeInsets.all(10),
                  padding: EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    image:DecorationImage(
                      image: AssetImage(artisData[index]["image"]),
                      fit: BoxFit.cover,
                    ),
                  ),
                  child: Text(
                    artisData[index]["nama"],
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}