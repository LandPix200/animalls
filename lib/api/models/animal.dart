import 'package:json_annotation/json_annotation.dart';

part 'animal.g.dart';

@JsonSerializable(
  fieldRename: FieldRename.snake,
  explicitToJson: true,
)
class Animal {
  String name;
  Taxonomy taxonomy;
  List<String> locations;
  Characteristics characteristics;

  Animal({
    required this.name,
    required this.taxonomy,
    required this.locations,
    required this.characteristics,
  });

  factory Animal.fromJson(Map<String, dynamic> json) => _$AnimalFromJson(json);

  Map<String, dynamic> toJson() => _$AnimalToJson(this);
}

@JsonSerializable(
  fieldRename: FieldRename.snake,
)
class Taxonomy {
  String? kingdom;
  String? phylum;
  String? classs;
  String? order;
  String? family;
  String? genus;
  String? scientificName;

  Taxonomy({
    required this.kingdom,
    required this.phylum,
    required this.classs,
    required this.order,
    required this.family,
    required this.genus,
    required this.scientificName,
  });

  factory Taxonomy.fromJson(Map<String, dynamic> json) =>
      _$TaxonomyFromJson(json);

  Map<String, dynamic> toJson() => _$TaxonomyToJson(this);

  @override
  String toString() {
    String text = "";

    // Kingdom
    if (kingdom != null) {
      text += "Kingdom: $kingdom\n";
    }

    // Phylum
    if (phylum != null) {
      text += "Phylum: $phylum\n";
    }

    // Class
    if (classs != null) {
      text += "Class: $classs\n";
    }

    // Order
    if (order != null) {
      text += "Order: $order\n";
    }

    // Family
    if (family != null) {
      text += "Family: $family\n";
    }

    // Genus
    if (genus != null) {
      text += "Genus: $genus\n";
    }

    // Scientific Name
    if (scientificName != null) {
      text += "Scientific Name: $scientificName\n";
    }

    return text;
  }
}

@JsonSerializable(
  fieldRename: FieldRename.snake,
)
class Characteristics {
  String? prey;
  String? nameOfYoung;
  String? groupBehavior;
  String? estimatedPopulationSize;
  String? biggestThreat;
  String? mostDistinctiveFeature;
  String? gestationPeriod;
  String? habitat;
  String? diet;
  String? averageLitterSize;
  String? lifestyle;
  String? commonName;
  String? numberOfSpecies;
  String? location;
  String? slogan;
  String? group;
  String? color;
  String? skinType;
  String? topSpeed;
  String? lifespan;
  String? weight;
  String? height;
  String? ageOfSexualMaturity;
  String? ageOfWeaning;

  Characteristics({
    required this.prey,
    required this.nameOfYoung,
    required this.groupBehavior,
    required this.estimatedPopulationSize,
    required this.biggestThreat,
    required this.mostDistinctiveFeature,
    required this.gestationPeriod,
    required this.habitat,
    required this.diet,
    required this.averageLitterSize,
    required this.lifestyle,
    required this.commonName,
    required this.numberOfSpecies,
    required this.location,
    required this.slogan,
    required this.group,
    required this.color,
    required this.skinType,
    required this.topSpeed,
    required this.lifespan,
    required this.weight,
    required this.height,
    required this.ageOfSexualMaturity,
    required this.ageOfWeaning,
  });

  factory Characteristics.fromJson(Map<String, dynamic> json) =>
      _$CharacteristicsFromJson(json);

  Map<String, dynamic> toJson() => _$CharacteristicsToJson(this);

  @override
  String toString() {
    String text = "";

    // Préy
    if (prey != null) {
      text += "Prey: $prey\n";
    }

    // Name of Young
    if (nameOfYoung != null) {
      text += "Name of Young: $nameOfYoung\n";
    }

    // Group Behavior
    if (groupBehavior != null) {
      text += "Group Behavior: $groupBehavior\n";
    }

    // Estimated Population Size
    if (estimatedPopulationSize != null) {
      text += "Estimated Population Size: $estimatedPopulationSize\n";
    }

    // Biggest Threat
    if (biggestThreat != null) {
      text += "Biggest Threat: $biggestThreat\n";
    }

    // Most Distinctive Feature
    if (mostDistinctiveFeature != null) {
      text += "Most Distinctive Feature: $mostDistinctiveFeature\n";
    }

    // Gestation Period
    if (gestationPeriod != null) {
      text += "Gestation Period: $gestationPeriod\n";
    }

    // Habitat
    if (habitat != null) {
      text += "Habitat: $habitat\n";
    }

    // Diet
    if (diet != null) {
      text += "Diet: $diet\n";
    }

    // Average Litter Size
    if (averageLitterSize != null) {
      text += "Average Litter Size: $averageLitterSize\n";
    }

    // Lifestyle
    if (lifestyle != null) {
      text += "Lifestyle: $lifestyle\n";
    }

    // Common Name
    if (commonName != null) {
      text += "Common Name: $commonName\n";
    }

    // Number of Species
    if (numberOfSpecies != null) {
      text += "Number of Species: $numberOfSpecies\n";
    }

    // Location
    if (location != null) {
      text += "Location: $location\n";
    }

    // Slogan
    if (slogan != null) {
      text += "Slogan: $slogan\n";
    }

    // Group
    if (group != null) {
      text += "Group: $group\n";
    }

    // Color
    if (color != null) {
      text += "Color: $color\n";
    }

    // Skin Type
    if (skinType != null) {
      text += "Skin Type: $skinType\n";
    }

    // Top Speed
    if (topSpeed != null) {
      text += "Top Speed: $topSpeed\n";
    }

    // Lifespan
    if (lifespan != null) {
      text += "Lifespan: $lifespan\n";
    }

    // Weight
    if (weight != null) {
      text += "Weight: $weight\n";
    }

    // Height
    if (height != null) {
      text += "Height: $height\n";
    }

    // Age of Sexual Maturity
    if (ageOfSexualMaturity != null) {
      text += "Age of Sexual Maturity: $ageOfSexualMaturity\n";
    }

    // Age of Weaning
    if (ageOfWeaning != null) {
      text += "Age of Weaning: $ageOfWeaning\n";
    }

    return text;
  }

  //
}
