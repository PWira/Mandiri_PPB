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
      'foto': 'images/yoga.jpg'
    },
    {
      'npm': '011210046',
      'nama': 'Femas Kurniawan',
      'prodi': 'Sarjana Informatika',
      'foto': 'images/femas.jpg'
    },
    {
      'npm': '011210035',
      'nama': 'Muhammad Alif Al Fajra',
      'prodi': 'Sarjana Informatika',
      'foto': 'images/Hokage_Alif.jpg',
    },
    {
      'npm': '011210022',
      'nama': 'Muhammad Fajar Ikhwan',
      'prodi': 'Sarjana Informatika',
      'foto': 'images/boy.jpg'
    },
    {
      'npm': '011210023',
      'nama': 'Putra Wira Albarokah',
      'prodi': 'Sarjana Informatika',
      'foto': 'images/putra.jpg'
    },
    {
      'npm': '011210043',
      'nama': 'Rafly Dief Setiawan',
      'prodi': 'Sarjana Informatika',
      'foto': 'images/raply.jpg'
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
                    ),
                  ),
                );
              },
              child: Container(
                decoration: BoxDecoration(
                    color: mahasiswa[i]['prodi'] ==
                            'Sistem Informasi Program Sarjana'
                        ? Color.fromARGB(255, 114, 126, 22)
                        : Color.fromARGB(255, 191, 200, 205),
                ),
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