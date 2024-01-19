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
  String foto;
  int dart;
  int html;
  int php;
  int css;

  Mahasiswa({
    required this.npm,
    required this.nama,
    required this.prodi,
    required this.foto,
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
    foto: 'images/yoga.jpg',
    dart: 60,
    html: 60,
    php: 60,
    css: 60,
  ),
  Mahasiswa(
    npm: '011210046',
    nama: 'Femas Kurniawan',
    prodi: 'Sarjana Informatika',
    foto: 'images/femas.jpg',
    dart: 60,
    html: 60,
    php: 60,
    css: 60,
  ),
  Mahasiswa(
    npm: '011210035',
    nama: 'Muhammad Alif Al Fajra',
    prodi: 'Sarjana Informatika',
    foto: 'images/Hokage_Alif.jpg',
    dart: 60,
    html: 60,
    php: 60,
    css: 60,
  ),
  Mahasiswa(
    npm: '011210022',
    nama: 'Muhammad Fajar Ikhwan',
    prodi: 'Sarjana Informatika',
    foto: 'images/boy.jpg',
    dart: 60,
    html: 60,
    php: 60,
    css: 60,
  ),
  Mahasiswa(
    npm: '011210023',
    nama: 'Putra Wira Albarokah',
    prodi: 'Sarjana Informatika',
    foto: 'images/putra.jpg',
    dart: 65,
    html: 95,
    php: 90,
    css: 95,
  ),
  Mahasiswa(
    npm: '011210043',
    nama: 'Rafly Dief Setiawan',
    prodi: 'Sarjana Informatika',
    foto: 'images/raply.jpg',
    dart: 60,
    html: 60,
    php: 60,
    css: 60,
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
                      foto: mahasiswaList[i].foto,
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
                      SizedBox(height: 8.0), // Jarak antara foto dan teks
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