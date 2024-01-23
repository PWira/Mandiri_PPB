import 'package:flutter/material.dart';
import 'package:mandiri_pbb/pages/detail_anggota.dart';

class ListAnggota extends StatefulWidget {
  const ListAnggota({super.key});

  @override
  State<ListAnggota> createState() => _ListAnggotaState();
}

class Mahasiswa {
  String npm;
  String nama;
  String prodi;
  String quotes;
  String foto;
  String linkdn;
  String tiktok;
  String ig;
  String wa;
  int dart;
  int html;
  int php;
  int css;

  Mahasiswa({
    required this.npm,
    required this.nama,
    required this.prodi,
    required this.quotes,
    required this.foto,
    required this.linkdn,
    required this.tiktok,
    required this.ig,
    required this.wa,
    required this.dart,
    required this.html,
    required this.php,
    required this.css,
  });
}

List<Mahasiswa> mahasiswaList = [
  Mahasiswa(
    npm: '011210009',
    nama: 'Prayoga Kurniawan',
    prodi: 'Sarjana Informatika',
    quotes: '"Unmglich ist nur eine meinung." \n (Ketidakmungkinan cumalah sebuah opini)',
    foto: 'images/yoga.jpg',
    linkdn: 'https://www.linkedin.com/',
    tiktok: 'https://www.tiktok.com/@assssssssss26',
    ig: 'https://www.instagram.com/prayoga._15/',
    wa: 'https://wa.me/+628993382246',
    dart: 70,
    html: 85,
    php: 80,
    css: 80,
  ),
  Mahasiswa(
    npm: '011210023',
    nama: 'Putra Wira Albarokah',
    prodi: 'Sarjana Informatika',
    quotes: 'Heroes are naive, Villains are ignorant \n and I am the opposite of both',
    foto: 'images/putra.jpg',
    linkdn: 'https://www.linkedin.com/',
    tiktok: 'https://www.tiktok.com/@PWiraAl',
    ig: 'https://www.instagram.com/putrawira_a/',
    wa: 'https://wa.me/+62895640636582',
    dart: 75,
    html: 95,
    php: 90,
    css: 95,
  ),
  Mahasiswa(
    npm: '011210035',
    nama: 'Muhammad Alif Al Fajra',
    prodi: 'Sarjana Informatika',
    quotes: 'Stay Low Profile',
    foto: 'images/Hokage_Alif.jpg',
    linkdn: 'https://id.linkedin.com/in/muhamad-alif-alfajra-0a4679255',
    tiktok: 'https://www.tiktok.com/@ini_alif10?_t=8j9TCaOuiJ8&_r=1',
    ig: 'https://www.instagram.com/inialif_njer?igsh=MWQ3NDVuY3Qwa2M2eg==',
    wa: 'https://wa.me/+6285952820313',
    dart: 70,
    html: 85,
    php: 80,
    css: 85,
  ),
  Mahasiswa(
    npm: '011210046',
    nama: 'Femas Kurniawan',
    prodi: 'Sarjana Informatika',
    quotes: 'No Pain No Gain',
    foto: 'images/femas.jpg',
    linkdn: 'https://www.linkedin.com/',
    tiktok: 'https://www.tiktok.com/@femas_kur18',
    ig: 'https://www.instagram.com/femas_kur/',
    wa: 'https://wa.me/+6281214332047',
    dart: 70,
    html: 90,
    php: 80,
    css: 90,
  ),
  Mahasiswa(
    npm: '011210022',
    nama: 'Muhammad Fajar Ikhwan',
    prodi: 'Sarjana Informatika',
    quotes: 'Muhammad SAW Junjungan Ku',
    foto: 'images/boy.jpg',
    linkdn: 'https://www.linkedin.com/',
    tiktok: 'https://www.tiktok.com/@23.pppp?_t=8j9TZejfDGb&_r=1',
    ig: 'https://www.instagram.com/vajarboy_/',
    wa: 'https://wa.me/+6287768298829',
    dart: 70,
    html: 85,
    php: 70,
    css: 80,
  ),
  Mahasiswa(
    npm: '011210043',
    nama: 'Rafly Dief Setiawan',
    prodi: 'Sarjana Informatika',
    quotes: 'Jadilah Diri Sendiri dan Nikmatilah Hidup Ini',
    foto: 'images/raply.jpg',
    linkdn: 'https://www.linkedin.com/',
    tiktok: 'https://www.tiktok.com/@rolesox.s?is_from_webapp=1&sender_device=pc',
    ig: 'https://www.instagram.com/in_rafly?igsh=a2R0Y2c5YTJxMnY4',
    wa: 'https://wa.me/+6285789702749',
    dart: 60,
    html: 70,
    php: 60,
    css: 70,
  ),
];


class _ListAnggotaState extends State<ListAnggota> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          for (int i = 0; i < mahasiswaList.length; i++)
            InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => DetailAnggota(
                      nama: mahasiswaList[i].nama,
                      npm: mahasiswaList[i].npm,
                      prodi: mahasiswaList[i].prodi,
                      quotes: mahasiswaList[i].quotes,
                      foto: mahasiswaList[i].foto,
                      linkdn: mahasiswaList[i].linkdn,
                      tiktok: mahasiswaList[i].tiktok,
                      ig: mahasiswaList[i].ig,
                      wa: mahasiswaList[i].wa,
                      dart: mahasiswaList[i].dart.toString(),
                      html: mahasiswaList[i].html.toString(),
                      php: mahasiswaList[i].php.toString(),
                      css: mahasiswaList[i].css.toString(),
                    ),
                  ),
                );
              },
              child: Container(
                child: ListTile(
                  title: Column(
                    children: [
                      Center(
                        child: Container(
                          decoration: BoxDecoration(
                            shape: BoxShape.rectangle,
                            borderRadius: BorderRadius.circular(5.0),
                            border: Border.all(
                              color: Colors.black,
                              width: 2.0,
                            ),
                          ),
                          child: Image(
                            image: AssetImage(mahasiswaList[i].foto),
                            width: 250.0,
                            height: 250.0,
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      SizedBox(height: 8.0),
                      Text(
                        mahasiswaList[i].nama,
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        mahasiswaList[i].npm,
                      ),
                      Text(
                        mahasiswaList[i].prodi,
                      ),
                    ],
                  ),
                ),
              ),
            ),
        ],
      ),
    );
  }
}