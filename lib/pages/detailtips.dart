import 'package:flutter/material.dart';
import 'package:mandiri_pbb/data/list_anggota.dart';
import 'package:mandiri_pbb/data/tips.dart';

class ObatDetailsScreen extends StatelessWidget {
  final Tips obat;
  final Mahasiswa anggota;

  ObatDetailsScreen(this.obat, this.anggota);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(obat.title),
        backgroundColor: Color.fromARGB(255, 87,139,152),
      ),
      body: Container(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Center(
                  child: Image.asset(
                    obat.ImageAsset,
                  ),
                ),
                SizedBox(height: 8.0), 
                Container(
                  child: Padding(
                    padding: const EdgeInsets.all(2.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        SizedBox(height: 8.0),
                        Text(
                          'Oleh : '+anggota.nama,
                          textAlign: TextAlign.justify,
                          style: TextStyle(fontSize: 18.0),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(height: 8.0), 
                Card(
                  elevation: 4.0,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(height: 8.0),
                        Text(
                          obat.description,
                          textAlign: TextAlign.justify,
                          style: TextStyle(fontSize: 18.0),
                        ),
                      ],
                    ),
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
