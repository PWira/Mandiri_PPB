import 'package:flutter/material.dart';
import 'package:mandiri_pbb/menu/footer.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Portfolio"),
      ),
      // body: ListView(
      //       children: [
      //         for(int i = 0; i<mahasiswa.length;i++)
      //           InkWell(
      //             onTap: () {
      //             Navigator.push(context, 
      //               MaterialPageRoute(builder: (context) => 
      //                 DetailContactPage(
      //                   nama: mahasiswa[i]['nama'].toString(),
      //                   npm: mahasiswa[i]['npm'].toString(),
      //                   prodi: mahasiswa[i]['prodi'].toString(),
      //                   img: mahasiswa[i]['img'].toString()
      //                 ),
      //               ),
      //             ); 
      //             },child: Container(
      //               height: 80,
      //               alignment: Alignment.centerLeft,
      //               padding: EdgeInsets.all(5),
      //               decoration: BoxDecoration(
      //                 // color: (mahasiswa[i]['prodi'] != null && mahasiswa[i]['prodi'].toString() == 'Informatika Program Sarjana') ? Colors.blue : Colors.yellow,
      //                 border: Border(
      //                   bottom: BorderSide(
      //                     color: Colors.grey,
      //                     width: 2
      //                   )
      //                 )
      //               ),
      //                 child: ListTile(
      //                   leading: CircleAvatar(
      //                     foregroundImage: AssetImage(mahasiswa[i]['img'].toString()),
      //                   ),
      //                   title: Text(
      //                     mahasiswa[i]['nama'].toString(),
      //                     style: TextStyle(
      //                       fontWeight: FontWeight.bold,
      //                     ),
      //                   ),
      //                   subtitle: Text(
      //                     mahasiswa[i]['prodi'].toString(),
      //                   ),
      //                 ),
      //             ),
      //           ),
      //       ],
      //     ),
      bottomNavigationBar: Footer(),
    );
  }
}