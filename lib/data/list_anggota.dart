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
      'foto': 'images/yoga.jpg',
      'dart':60,
      'html':60,
      'php':60,
      'css':60,
    },
    {
      'npm': '011210046',
      'nama': 'Femas Kurniawan',
      'prodi': 'Sarjana Informatika',
      'foto': 'images/femas.jpg',
      'dart':60,
      'html':60,
      'php':60,
      'css':60,
    },
    {
      'npm': '011210035',
      'nama': 'Muhammad Alif Al Fajra',
      'prodi': 'Sarjana Informatika',
      'foto': 'images/Hokage_Alif.jpg',
      'dart':60,
      'html':60,
      'php':60,
      'css':60,
    },
    {
      'npm': '011210022',
      'nama': 'Muhammad Fajar Ikhwan',
      'prodi': 'Sarjana Informatika',
      'foto': 'images/boy.jpg',
      'dart':60,
      'html':60,
      'php':60,
      'css':60,
    },
    {
      'npm': '011210023',
      'nama': 'Putra Wira Albarokah',
      'prodi': 'Sarjana Informatika',
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
      'foto': 'images/raply.jpg',
      'dart':60,
      'html':60,
      'php':60,
      'css':60,
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
                      SizedBox(height: 8.0), // Jarak antara foto dan teks
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