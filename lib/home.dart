import 'package:flutter/material.dart';
import 'package:pertemuan9/detail.dart';
import 'package:pertemuan9/helper.dart';
import 'package:pertemuan9/hrefs.dart';
import 'package:pertemuan9/konten.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  TextEditingController inputan = new TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Home"),
      ),
      body: Container(
        height: 400,
        width: double.infinity,
        color: Colors.white,
        alignment: Alignment.center,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            TextFormField(
              controller: inputan,
              decoration: InputDecoration(
                labelText: "Input Sesuatu"
              ),
            ),
            SizedBox(height: 20),
            InkWell(
              onTap: () async{
                Helper.saveNama(
                  inputan.text
                );
              },
              child: Container(
                alignment: Alignment.center,
                color: Colors.blueAccent,
                height: 40,
                width: 150,
                child: Text("Submit", style: TextStyle(color: Colors.white),),
              ),
            ),

            SizedBox(height: 20),
            InkWell(
              onTap: () async{
                Routes.changePage(context, DetailPage());
              },
              child: Container(
                alignment: Alignment.center,
                color: Colors.blueAccent,
                height: 40,
                width: 150,
                child: Text("DETAIL", style: TextStyle(color: Colors.white),),
              ),
            )
          ],
        ),
        // child: ListView.builder(
        //   itemCount: 10,
        //   itemBuilder: (context , index) {
        //     return InkWell(
        //       onTap: (){
        //         Routes.changePage(context, DetailPage());
        //       },
        //       child: Konten(
        //         index: index.toString(),
        //         warna: index==0 ? Colors.red : Colors.brown,
        //       ),
        //     );
        //   }
        // ),
      ),
    );
  }
}