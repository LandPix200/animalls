import 'package:flutter/material.dart';

import '../../../api/models/animal.dart';
import 'animal_row.dart';

class AnimalList extends StatelessWidget {
  const AnimalList({super.key, required this.animals});

  final List<Animal> animals;

  @override
  Widget build(BuildContext context) {
    var length = animals.length;
    return Scaffold(
      appBar: AppBar(
        title: Text(
            "$length ${length == 1 ? "animal trouvé" : "animaux trouvés"}"),
      ),
      body: ListView.separated(
        itemBuilder: (context, index) {
          return AnimalRow(animal: animals[index]);
        },
        separatorBuilder: (context, index) => const Divider(),
        itemCount: length,
      ),
    );
  }
}
