import 'dart:convert';

import 'package:http/http.dart' as http;

class Shibe {
  static Future<List> getRandomAnimalImage() async {
    Uri uri = Uri.parse(
        "https://shibe.online/api/shibes?count=1&urls=true&httpsUrls=true");

    var r = await http.get(uri);
    List images = jsonDecode(r.body);
    return images;
  }
}
