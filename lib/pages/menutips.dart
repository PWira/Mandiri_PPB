import 'package:flutter/material.dart';
import 'package:mandiri_pbb/data/list_anggota.dart';
import 'package:mandiri_pbb/data/tips.dart';
import 'package:mandiri_pbb/pages/detailtips.dart';

class MenuTips extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Tips Kesehatan'),
        centerTitle: true,
        backgroundColor: Color.fromARGB(255, 87,139,152),
      ),
      // backgroundColor: Color.fromARGB(255, 234, 177, 177),
      body: GridView.builder(
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            childAspectRatio: 1,
          ),
          itemCount: TipsList.length,
          itemBuilder: (context, index) {
            Tips obat = TipsList[index];
            Mahasiswa anggota = mahasiswaList[index % mahasiswaList.length];
            return Card(
              color: Color.fromARGB(255, 255, 255, 255),
              child: ListTile(
                title: Column(
                  children: [
                    Expanded(
                      child: Image.asset(obat.ImageAsset),
                    ),
                    Text("Oleh : "+anggota.nama, textAlign: TextAlign.center),
                    SizedBox(height: 5),
                    Text(obat.title, textAlign: TextAlign.center),
                  ],
                ),
                contentPadding: EdgeInsets.only(bottom: 10),
                // trailing: Icon(Icons.arrow_forward_rounded),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => ObatDetailsScreen(obat, anggota)
                    ),
                  );
                },
              ),
            );
          }),
    );
  }
}
