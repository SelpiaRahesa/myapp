import 'package:flutter/material.dart';

class Latihan2RowColumn extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Container(
              width: 150,
              height: 150,
              decoration: BoxDecoration(
                  color: Color.fromARGB(255, 228, 145, 67),
                  borderRadius: BorderRadius.circular(10),
                ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    width: 160,
                    height: 130,
                    decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10), 
                    image: DecorationImage(
                      image: NetworkImage(
                        'https://asset.kompas.com/crops/8bPJsqFnc_XF695bwAJJNLWpiFw=/0x82:1000x749/750x500/data/photo/2020/06/07/5edcb094da060.jpg'),
                    fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ],
              ),
              
            ),
            Container(
              width: 150,
              height: 150,
              decoration: BoxDecoration(
                  color: Color.fromARGB(255, 228, 145, 67),
                  borderRadius: BorderRadius.circular(10),
                ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    width: 130,
                    height: 130,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10), 
                      image: DecorationImage(
                        image: NetworkImage(
                            'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR4U2wPsh5QbGpBji7iJANutevVAyEnzcBUhww8Q_UKsNU0yUxLBKWh_reYHyq9yatVBIc&usqp=CAU'),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Container(
              width: 300,
              height: 140,
              decoration: BoxDecoration(
                  color: Color.fromARGB(255, 228, 145, 67),
                  borderRadius: BorderRadius.circular(10),
                ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    width: 160,
                    height: 100,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10), 
                      image: DecorationImage(
                        image: NetworkImage(
                            'https://cimgr.clozette.co/cimg/f_jpg,w_599.541,h_598,c_fit/img/WhatsApp%20Image%202023-03-13%20at%2018.28.33.jpeg'),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  Container(
                    width: 100,
                    height: 100,
                    child: Text(
                      'Daifuku Mochi',
                      style: TextStyle(fontSize: 20),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Container(
              width: 300,
              height: 150,
              decoration: BoxDecoration(
                  color: Color.fromARGB(255, 228, 145, 67),
                  borderRadius: BorderRadius.circular(10),
                ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    width: 160,
                    height: 100,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10), 
                      image: DecorationImage(
                        image: NetworkImage(
                            'https://i.pinimg.com/736x/81/9a/bc/819abc0aa76e3effc602aef5ac92a828.jpg'),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  Container(
                    width: 100,
                    height: 100,
                    child: Text(
                      'Tanghulu',
                      style: TextStyle(fontSize: 20),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ],
    );
  }
}
