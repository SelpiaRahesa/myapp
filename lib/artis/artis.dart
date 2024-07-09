import 'package:flutter/material.dart';
import 'package:myapp/screens/detail_wisata_screen.dart';
import 'detail_artis.dart';

class Artis extends StatelessWidget {
  final List<Map<String, dynamic>> artisData = [
    {
      "nama": "KANGTA",
      "debut": "1996",
      "image": "assets/images/Kangta.jpg",
      "gallery": [
        "assets/images/Kangta.jpg",
        "assets/images/Kangta.jpg",
        "assets/images/Kangta.jpg"
      ],
      "desc": "Ubud adalah sebuah destinasi wisata populer di Bali yang terkenal dengan seni, budaya, dan alam yang indah. Terletak di antara sawah dan jurang yang curam, Ubud menawarkan pengalaman yang tak terlupakan bagi wisatawan."
    },
    {
      "nama": "Nusa Penida",
      "kota": "Bali",
      "image": "assets/images/nusapenida.jpg",
      "gallery": [
        "assets/images/nusapenida1.jpg",
        "assets/images/nusapenida2.jpg",
        "assets/images/nusapenida3.jpg",
      ],
      "desc": "Nusa Penida adalah sebuah pulau kecil di sebelah tenggara Bali, terkenal dengan pantai yang indah, tebing-tebing yang menakjubkan, dan kehidupan bawah laut yang luar biasa. Tempat ini ideal untuk snorkeling dan diving."
    },
    {
      "nama": "Pantai Kuta",
      "kota": "Bali",
      "image": "assets/images/kuta.jpg",
      "gallery": [
        "assets/images/kuta1.jpg",
        "assets/images/kuta2.jpg",
        "assets/images/kuta3.jpg",
      ],
      "desc": "Pantai Kuta adalah salah satu pantai paling terkenal di Bali, dikenal dengan pasir putihnya yang lembut, ombak yang cocok untuk berselancar, dan pemandangan matahari terbenam yang menakjubkan. Kuta juga menawarkan berbagai fasilitas hiburan malam."
    },
    {
      "nama": "Gunung Rinjani",
      "kota": "Lombok",
      "image": "assets/images/rinjani.jpg",
      "gallery": [
        "assets/images/rinjani1.jpg",
        "assets/images/rinjani2.jpg",
        "assets/images/rinjani3.jpg",
      ],
      "desc": "Gunung Rinjani adalah gunung berapi tertinggi kedua di Indonesia yang terletak di Pulau Lombok. Mendaki Gunung Rinjani menawarkan pemandangan spektakuler dan pengalaman yang menantang bagi para pendaki."
    },
    {
      "nama": "Ranca Upas",
      "kota": "Bandung",
      "image": "assets/images/rancaupas.jpg",
      "gallery": [
        "assets/images/rancaupas1.jpg",
        "assets/images/rancaupas2.jpg",
        "assets/images/rancaupas3.jpg",
      ],
      "desc": "Ranca Upas adalah area perkemahan dan konservasi rusa yang terletak di Ciwidey, Bandung. Tempat ini menawarkan pengalaman berkemah yang unik dengan pemandangan alam yang indah dan udara sejuk."
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