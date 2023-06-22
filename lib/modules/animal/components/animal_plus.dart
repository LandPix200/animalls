import 'package:animalls/widgets/texts.dart';
import 'package:flutter/material.dart';

import '../../../utils/logic.dart';

class AnimalPlus extends StatelessWidget {
  const AnimalPlus({super.key, required this.description, required this.title});

  final String description;
  final String title;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(
            height: 12,
          ),
          TextTr(
            title,
            style: const TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
            ),
          ),
          const Divider(),
          FutureBuilder(
            initialData: description,
            future: tr(description),
            builder: (context, snapshot) {
              return TextTr(snapshot.data ?? description,
                  style: const TextStyle(fontSize: 16));
            },
          ),
        ],
      ),
    );
  }
}
