import 'package:flutter/material.dart';

class Konten extends StatelessWidget {
  final String index;
  final Color warna;
  Konten({this.index, this.warna});
  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      height: 75,
      width: double.infinity,
      decoration: BoxDecoration(
        color: warna,
        border: Border.all(color: Colors.black, width: 1)
      ),
      child: Text("INI TEKS KE-${index}")
    );
  }
}