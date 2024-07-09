import 'package:flutter/material.dart';

class AboutArtis extends StatelessWidget {
  const AboutArtis({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('LIC (Labels In Company)'),
        backgroundColor: Colors.blue,
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: SingleChildScrollView(
        child: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage("assets/images/bgartis.jpg"),
              fit: BoxFit.cover,
            ),
          ),
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(height: 20.0),
                CircleAvatar(
                  radius: 60.0,
                  backgroundImage: AssetImage('assets/images/labelsmc1.png'),
                ),
                SizedBox(height: 20.0),
                Card(
                  color: Colors.white.withOpacity(0.8),
                  margin: EdgeInsets.symmetric(vertical: 10.0),
                  child: Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Column(
                      children: [
                        Text(
                          'SM Classic',
                          style: TextStyle(
                            fontSize: 24.0,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(height: 10.0),
                        Text(
                          'SM Classics adalah label musik klasik milik SM Entertainment yang menyajikan K-pop dengan mengaransemen ulang lagu-lagu K-pop menjadi versi orkestra dan berbagai aransemen musik klasik. Label ini mencakup berbagai genre yang berhubungan dengan musik klasik, termasuk tetapi tidak terbatas pada jazz, soundtrack orisinal, dan musik latar film, serta memperluas cakrawala musik melalui berbagai kolaborasi dengan para artis.',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize: 16.8,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Card(
                  color: Colors.white.withOpacity(0.8),
                  margin: EdgeInsets.symmetric(vertical: 10.0),
                  child: Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Column(
                      children: [
                        Text(
                          'Scream Records',
                          style: TextStyle(
                            fontSize: 20.0,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(height: 10.0),
                        Text(
                          'ScreaM Records adalah label Dance Music di bawah naungan SM Entertainment, yang diluncurkan pada Januari 2016 untuk mencari diversifikasi musik dan memperluas jangkauan dari pertunjukan untuk ditonton dan didengarkan menjadi pertunjukan untuk dinikmati bersama.ScreaM Records terlibat dalam berbagai aktivitas seperti produksi dan distribusi musik, proyek remix K-POP iScreaM, mengelola DJ/produser, merencanakan dan menyelenggarakan acara offline, dan memimpin perpaduan baru antara K-POP dan Dance Music',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize: 16.8,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Card(
                  color: Colors.white.withOpacity(0.8),
                  margin: EdgeInsets.symmetric(vertical: 10.0),
                  child: Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Column(
                      children: [
                        Text(
                          'Krucialize',
                          style: TextStyle(
                            fontSize: 20.0,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(height: 10.0),
                        Text(
                          'KRUCIALIZE adalah label musik di bawah naungan SM Entertainment, tempat ARTIS dan KREW diberi kewenangan untuk membuat berbagai konten yang berasal dari musik dan seterusnya. Kami bertujuan untuk menghidupkan kembali esensi K-pop dengan memperluas spektrum genre dan mencari konten yang unik dan khas. Kami sangat menantikan lebih banyak pendengar yang beragam untuk menjadi bagian dari KREW milik KRUCIALIZE.',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize: 16.8,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(height: 40.0),
                SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      foregroundColor: const Color.fromARGB(255, 0, 0, 0),
                      backgroundColor: Color.fromARGB(255, 255, 141, 141),
                      padding: EdgeInsets.symmetric(vertical: 16.0),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8.0),
                      ),
                    ),
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    child: Text('Back'),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}