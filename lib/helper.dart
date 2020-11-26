import 'package:shared_preferences/shared_preferences.dart';

class Helper {

  static saveNama(value) async {
    save("nama" , value);
  }
  static getNama() async {
    final prefs = await SharedPreferences.getInstance();
    String x = prefs.getString("nama");
    print("NAMANYA" + x);
    return x;
  }
  static save(String key, String value) async{
    final prefs = await SharedPreferences.getInstance();
    await prefs.setString(key, value);
    print("Saved ${key} Value ${value}");
  }
}