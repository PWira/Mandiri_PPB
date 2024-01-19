// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class DetailAnggota extends StatefulWidget {
  final String npm, nama, prodi, quotes, foto, linkdn, tiktok, ig, wa, dart, html, php, css;

  DetailAnggota({
    required this.npm,
    required this.nama,
    required this.prodi,
    required this.quotes,
    required this.foto,
    required this.linkdn,
    required this.tiktok,
    required this.ig,
    required this.wa,
    required this.dart,
    required this.html,
    required this.php,
    required this.css,
  });

  @override
  State<DetailAnggota> createState() => _DetailAnggotaState(
        npm: npm,
        nama: nama,
        prodi: prodi,
        quotes: quotes,
        foto: foto,
        linkdn: linkdn,
        tiktok: tiktok,
        ig: ig,
        wa: wa,
        dart: dart,
        html: html,
        php: php,
        css: css,
      );
}

class _DetailAnggotaState extends State<DetailAnggota> {
  final String npm, nama, prodi, quotes, foto, linkdn, tiktok, ig, wa, dart, html, php, css;

  _DetailAnggotaState({
    required this.npm,
    required this.nama,
    required this.prodi,
    required this.quotes,
    required this.foto,
    required this.linkdn,
    required this.tiktok,
    required this.ig,
    required this.wa,
    required this.dart,
    required this.html,
    required this.php,
    required this.css,
  });

  var skills = [
    {
      'skill': "Dart",
      'percentage': '',
    },
    {
      'skill': "HTML",
      'percentage': '',
    },
    {
      'skill': "PHP",
      'percentage': '',
    },
    {
      'skill': "CSS",
      'percentage': '',
    },
  ];

  @override
  void initState() {
    super.initState();

    // Initialize the percentages in the skills list with widget values
    skills[0]['percentage'] = dart;
    skills[1]['percentage'] = html;
    skills[2]['percentage'] = php;
    skills[3]['percentage'] = css;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 15,
            ),
            ListTile(
              leading: GestureDetector(
                behavior: HitTestBehavior.translucent,
                child: Icon(
                  Icons.arrow_back,
                ),
                onTap: () {
                  Navigator.pop(context);
                },
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CircleAvatar(
                  maxRadius: 65,
                  backgroundImage: AssetImage(widget.foto),
                ),
              ],
            ),
            const SizedBox(
              height: 15,
            ),
            Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      GestureDetector(
                        onTap: () {
                          launch(widget.linkdn);
                        },
                        child: CircleAvatar(
                          backgroundImage: AssetImage("images/linkedn.png"),
                        ),
                      ),
                      SizedBox(
                        width: 15,
                      ),
                      GestureDetector(
                        onTap: () {
                          
                          launch(widget.tiktok);
                        },
                        child: CircleAvatar(
                          backgroundImage: AssetImage("images/tiktok.png"),
                        ),
                      ),
                      SizedBox(
                        width: 15,
                      ),
                      GestureDetector(
                        onTap: () {
                          
                          launch(widget.ig);
                        },
                        child: CircleAvatar(
                          backgroundImage: AssetImage("images/ig.jpg"),
                        ),
                      ),
                      SizedBox(
                        width: 15,
                      ),
                      GestureDetector(
                        onTap: () {
                         
                          launch(widget.wa);
                        },
                        child: CircleAvatar(
                          backgroundImage: AssetImage("images/wa.png"),
                        ),
                      ),
                    ],
                  ),
            const SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  widget.nama,
                  style: TextStyle(
                    fontWeight: FontWeight.w900,
                    fontSize: 26,
                    color: Colors.black,
                  ),
                )
              ],
            ),
            const SizedBox(
              height: 15,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  '(${widget.npm})',
                  style: TextStyle(
                    color: Colors.black
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 15,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  '${widget.quotes}',
                  style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 15,
                  ),
                  textAlign: TextAlign.center,
                ),
              ],
            ),
            const SizedBox(
              height: 15,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  '${widget.prodi}',
                  style: TextStyle(
                    color:Colors.black
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 15,
            ),
            Column(
              children: [
                for (int i = 0; i < skills.length; i++)
                  Container(
                    margin: EdgeInsets.only(bottom: 15.0),
                    child: Row(
                      children: [
                        Expanded(
                          flex:
                              int.parse(skills[i]['percentage'].toString()),
                          child: Container(
                            padding: EdgeInsets.only(left: 10.0),
                            alignment: Alignment.centerLeft,
                            height: 38.0,
                            child: Text(skills[i]['skill'].toString(),style: TextStyle(color: Colors.white)),
                            color: Colors.indigo[800],
                          ),
                        ),
                        SizedBox(
                          width: 10.0,
                        ),
                        Expanded(
                          // remaining (blank part)
                          flex: 100 -
                              int.parse(skills[i]['percentage'].toString()),
                          child: Divider(
                            color: Colors.indigo[800],
                          ),
                        ),
                        SizedBox(
                          width: 10.0,
                        ),
                        Text(
                          "${skills[i]['percentage']} %",
                          style: TextStyle(
                            color: Colors.indigo[800],
                            fontSize: 16.0,
                          ),
                        )
                      ],
                    ),
                  ),
                  ],
                )
          ],
        ),
      ),
    );
  }
}