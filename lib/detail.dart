import 'package:flutter/material.dart';
import 'package:pertemuan9/helper.dart';

class DetailPage extends StatefulWidget {
  @override
  _DetailPageState createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage> {
  var nama;

  @override
  void initState() {
    getNama();
    super.initState();
  }
  
  void getNama() async {
    var y = await Helper.getNama();
    setState(() {
      nama = y;
    });
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("detail"),
      ),
      body: Column(
        children: [
          Container(
            height: 300,
            width: 300,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(300)),
              image: DecorationImage(
                fit: BoxFit.cover,
                colorFilter: ColorFilter.mode(Colors.black.withOpacity(0.5), BlendMode.darken),
                image: NetworkImage("https://img.okezone.com/content/2020/04/09/612/2196853/ada-2-bentuk-wajah-gambar-apa-yang-pertama-kali-kamu-lihat-bDKERiX5np.jpg")
              )
            ),
          ),
          Text("${nama}")
        ],
      ),
    );
  }
}