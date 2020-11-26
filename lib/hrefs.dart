import 'package:flutter/material.dart';

class Routes {
  static changePage(BuildContext context, StatefulWidget classes) {
    Navigator.push(context, 
      MaterialPageRoute(builder: (_) {
        return classes;
      })
    );
  }
}