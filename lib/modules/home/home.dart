import 'package:animalls/api/services/ninja.dart';
import 'package:animalls/api/services/shibe.dart';
import 'package:animalls/widgets/texts.dart';
import 'package:flutter/material.dart';
import 'package:loader_overlay/loader_overlay.dart';

import '../../utils/logic.dart';
import '../animal/components/animal_list.dart';

class HomePage extends StatelessWidget {
  HomePage({super.key});

  final TextEditingController search = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return LoaderOverlay(
      useDefaultLoading: false,
      overlayWidget: const OverlayWidget(text: "Recherche de l'animal..."),
      child: Scaffold(
        appBar: AppBar(
          title: const Text("Animalls"),
          centerTitle: true,
        ),
        body: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const ShibeCarousel(),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextField(
                  controller: search,
                  decoration: const InputDecoration(
                    labelText: "Entre le nom de ton animal",
                    border: OutlineInputBorder(),
                    hintText: "ex: Le lapin",
                    helperText:
                        "Veuillez toujours ajouter un article devant le mot (ex: Le lapin)",
                  ),
                ),
              ),
              const SizedBox(
                height: 5,
              ),
              FilledButton(
                onPressed: () {
                  context.loaderOverlay.show();
                  Ninja.getAnimals(search.text).then((value) {
                    context.loaderOverlay.hide();
                    if (value == null || value.isEmpty) {
                      ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
                          content: TextTr("Animal non trouvé")));
                    } else {
                      Nav.push(context, AnimalList(animals: value));
                    }
                  });
                },
                child: const Text(
                  "Go",
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class ShibeCarousel extends StatelessWidget {
  const ShibeCarousel({super.key});

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: Shibe.getRandomAnimalImage(),
      builder: (context, snapshot) {
        if (snapshot.hasData) {
          return SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: snapshot.data
                        ?.map((e) => Image.network(
                              e,
                              width: 300,
                              height: 300,
                              fit: BoxFit.cover,
                            ))
                        .toList() ??
                    [],
              ),
            ),
          );
        }
        return const OverlayWidget(text: "Le chien du moment");
      },
    );
  }
}

class OverlayWidget extends StatelessWidget {
  const OverlayWidget({
    super.key,
    required this.text,
  });

  final String text;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        height: 200,
        width: 200,
        decoration: BoxDecoration(
          color: Theme.of(context).scaffoldBackgroundColor,
          borderRadius: BorderRadius.circular(25),
        ),
        child: Material(
          borderRadius: BorderRadius.circular(25),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const CircularProgressIndicator(),
              const SizedBox(
                height: 25,
              ),
              TextTr(text)
            ],
          ),
        ),
      ),
    );
  }
}
