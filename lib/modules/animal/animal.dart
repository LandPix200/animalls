import 'package:animalls/api/models/animal.dart';
import 'package:flutter/material.dart';

import 'components/animal_plus.dart';

class AnimalPage extends StatelessWidget {
  const AnimalPage({super.key, required this.animal});

  final Animal animal;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(animal.name),
      ),
      body: ListView(
        children: [
          AnimalPlus(
            description: animal.characteristics.toString(),
            title: "Caractéristiques",
          ),
          AnimalPlus(
            description: animal.taxonomy.toString(),
            title: "Taxonomie",
          )
        ],
      ),
    );
  }
}
