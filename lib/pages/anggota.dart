import 'package:flutter/material.dart';
import 'package:mandiri_pbb/pages/list_anggota.dart';

class Anggota extends StatefulWidget {
  const Anggota({super.key});

  @override
  State<Anggota> createState() => _AnggotaState();
}

class _AnggotaState extends State<Anggota> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Portfolio Member"),
        centerTitle: true,
        backgroundColor: Color.fromARGB(255, 87,139,152),
      ),
      body: ListAnggota(),
    );
  }
}