import 'package:flutter/material.dart';
import 'package:mandiri_pbb/data/tips.dart';

class ObatDetailsScreen extends StatelessWidget {
  final Tips obat;

  ObatDetailsScreen(this.obat);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(obat.title),
        backgroundColor: Color.fromARGB(255, 252, 49, 35),
      ),
      body: Container(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Center(
                  child: Image.network(
                    obat.imageUrl,
                    height: 400, 
                  ),
                ),
                SizedBox(height: 16.0), 
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
