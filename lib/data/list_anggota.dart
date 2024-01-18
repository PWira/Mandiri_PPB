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
      'quotes': 'Kau Harus Biso \n Pacak dak Pacak, pacakke',
      'foto': 'images/yoga.jpg',
      'dart':70,
      'html':80,
      'php':80,
      'css':80,
    },
    {
      'npm': '011210046',
      'nama': 'Femas Kurniawan',
      'prodi': 'Sarjana Informatika',
      'quotes': 'No Pain No Gain',
      'foto': 'images/femas.jpg',
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
      'dart':70,
      'html':80,
      'php':70,
      'css':80,
    },
    {
      'npm': '011210023',
      'nama': 'Putra Wira Albarokah',
      'prodi': 'Sarjana Informatika',
      'quotes': 'Hero are naive, Villains are ignorant \n and I am the opposite of both',
      'foto': 'images/putra.jpg',
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