import 'package:flutter/material.dart';

import '../../../api/models/animal.dart';
import '../../../utils/logic.dart';
import '../../../widgets/texts.dart';
import '../animal.dart';

class AnimalRow extends StatelessWidget {
  const AnimalRow({
    super.key,
    required this.animal,
  });

  final Animal animal;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: TextTr(animal.name),
      onTap: () {
        Nav.push(context, AnimalPage(animal: animal));
      },
    );
  }
}
