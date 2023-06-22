import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:translator/translator.dart';

import '../../env/keys.dart';
import '../../utils/logic.dart';
import '../models/animal.dart';

class Ninja {
  //
  static Future<List<Animal>?> getAnimals(String name) async {
    try {
      String translatedName = (await name.translate()).text;

      var r = await http.get(
          getEndPoint("animals?name=${translatedName.split("").last}"),
          headers: {
            'X-Api-Key': ApiKeys.ninja,
          });

      List<Animal> animals =
          List.from(jsonDecode(r.body)).map((e) => Animal.fromJson(e)).toList();
      return animals;
    } catch (e) {
      return null;
    }
  }
}
