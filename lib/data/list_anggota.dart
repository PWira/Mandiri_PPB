import 'package:flutter/material.dart';
import 'package:mandiri_pbb/pages/detail_anggota.dart';

class ListAnggota extends StatefulWidget {
  const ListAnggota({super.key});

  @override
  State<ListAnggota> createState() => _ListAnggotaState();
}

class _ListAnggotaState extends State<ListAnggota> {

  var mahasiswa = [
    {
      'npm': '011210009',
      'nama': 'Prayoga Kurniawan',
      'prodi': 'Sarjana Informatika',
      'quotes': '"Unmglich ist nur eine meinung." \n (Ketidakmungkinan cumalah sebuah opini)',
      'foto': 'images/yoga.jpg',
      'linkdn': 'https://www.linkedin.com/',
      'tiktok': 'https://www.tiktok.com/@assssssssss26',
      'ig': 'https://www.instagram.com/prayoga._15/',
      'wa': 'https://wa.me/+628993382246',
      'dart':70,
      'html':85,
      'php':80,
      'css':80,
    },
    {
      'npm': '011210046',
      'nama': 'Femas Kurniawan',
      'prodi': 'Sarjana Informatika',
      'quotes': 'No Pain No Gain',
      'foto': 'images/femas.jpg',
      'linkdn': 'https://www.linkedin.com/',
      'tiktok': 'https://www.tiktok.com/@femas_kur18',
      'ig': 'https://www.instagram.com/femas_kur/',
      'wa': 'https://wa.me/+6281214332047',
      'dart':80,
      'html':90,
      'php':80,
      'css':90,
    },
    {
      'npm': '011210035',
      'nama': 'Muhammad Alif Al Fajra',
      'prodi': 'Sarjana Informatika',
      'quotes': 'Stay Low Profile',
      'foto': 'images/Hokage_Alif.jpg',
      'linkdn': 'https://id.linkedin.com/in/muhamad-alif-alfajra-0a4679255',
      'tiktok': 'https://www.tiktok.com/@jagoogoyang/video/7215918752213257499?q=goyang&t=1705565833923',
      'ig': 'https://www.instagram.com/inialif_njer?igsh=MWQ3NDVuY3Qwa2M2eg==',
      'wa': 'https://wa.me/+6285952820313',
      'dart':70,
      'html':85,
      'php':80,
      'css':85,
    },
    {
      'npm': '011210022',
      'nama': 'Muhammad Fajar Ikhwan',
      'prodi': 'Sarjana Informatika',
      'quotes': 'Muhammad SAW Junjungan Ku',
      'foto': 'images/boy.jpg',
      'linkdn': 'https://www.linkedin.com/',
      'tiktok': 'https://www.tiktok.com/@fajarsadboyofficial',
      'ig': 'https://www.instagram.com/vajarboy_/',
      'wa': 'https://wa.me/+6287768298829',
      'dart':70,
      'html':88,
      'php':70,
      'css':80,
    },
    {
      'npm': '011210023',
      'nama': 'Putra Wira Albarokah',
      'prodi': 'Sarjana Informatika',
      'quotes': 'Hero are naive, Villains are ignorant \n and I am the opposite of both',
      'foto': 'images/putra.jpg',
      'linkdn': 'https://www.linkedin.com/',
      'tiktok': 'https://www.tiktok.com/@ichigo7601/video/7249412515132656901?q=goyang&t=1705565833923',
      'ig': 'https://www.instagram.com/putrawira_a/',
      'wa': 'https://wa.me/+62895640636582',
      'dart':65,
      'html':95,
      'php':90,
      'css':95,
    },
    {
      'npm': '011210043',
      'nama': 'Rafly Dief Setiawan',
      'prodi': 'Sarjana Informatika',
      'quotes': 'Jadilah Diri Sendiri dan Nikmatilah Hidup Ini',
      'foto': 'images/raply.jpg',
      'linkdn': 'https://www.linkedin.com/',
      'tiktok': 'https://www.tiktok.com/@rolesox.s/video/6969375251260083457?q=rafly&t=1705565959890',
      'ig': 'https://www.instagram.com/in_rafly?igsh=a2R0Y2c5YTJxMnY4',
      'wa': 'https://wa.me/+6285789702749',
      'dart':60,
      'html':70,
      'php':60,
      'css':70,
    },
  ];
  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          for (int i = 0; i < mahasiswa.length; i++)
            InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => DetailAnggota(
                      nama: mahasiswa[i]['nama'].toString(),
                      npm: mahasiswa[i]['npm'].toString(),
                      prodi: mahasiswa[i]['prodi'].toString(),
                      quotes: mahasiswa[i]['quotes'].toString(),
                      foto: mahasiswa[i]['foto'].toString(),
                      linkdn: mahasiswa[i]['linkdn'].toString(),
                      tiktok: mahasiswa[i]['tiktok'].toString(),
                      ig: mahasiswa[i]['ig'].toString(),
                      wa: mahasiswa[i]['wa'].toString(),
                      dart: mahasiswa[i]['dart'].toString(),
                      html: mahasiswa[i]['html'].toString(),
                      php: mahasiswa[i]['php'].toString(),
                      css: mahasiswa[i]['css'].toString(),
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
                            image: AssetImage(mahasiswa[i]['foto'].toString()),
                            width: 250.0, 
                            height: 250.0,
                            fit: BoxFit.cover, 
                          ),
                        ),
                      ),
                      SizedBox(height: 8.0),
                      Text(
                        mahasiswa[i]['nama'].toString(),
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        mahasiswa[i]['npm'].toString(),
                      ),
                      Text(
                        mahasiswa[i]['prodi'].toString(),
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