// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'animal.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Animal _$AnimalFromJson(Map<String, dynamic> json) => Animal(
      name: json['name'] as String,
      taxonomy: Taxonomy.fromJson(json['taxonomy'] as Map<String, dynamic>),
      locations:
          (json['locations'] as List<dynamic>).map((e) => e as String).toList(),
      characteristics: Characteristics.fromJson(
          json['characteristics'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$AnimalToJson(Animal instance) => <String, dynamic>{
      'name': instance.name,
      'taxonomy': instance.taxonomy.toJson(),
      'locations': instance.locations,
      'characteristics': instance.characteristics.toJson(),
    };

Taxonomy _$TaxonomyFromJson(Map<String, dynamic> json) => Taxonomy(
      kingdom: json['kingdom'] as String?,
      phylum: json['phylum'] as String?,
      classs: json['classs'] as String?,
      order: json['order'] as String?,
      family: json['family'] as String?,
      genus: json['genus'] as String?,
      scientificName: json['scientific_name'] as String?,
    );

Map<String, dynamic> _$TaxonomyToJson(Taxonomy instance) => <String, dynamic>{
      'kingdom': instance.kingdom,
      'phylum': instance.phylum,
      'classs': instance.classs,
      'order': instance.order,
      'family': instance.family,
      'genus': instance.genus,
      'scientific_name': instance.scientificName,
    };

Characteristics _$CharacteristicsFromJson(Map<String, dynamic> json) =>
    Characteristics(
      prey: json['prey'] as String?,
      nameOfYoung: json['name_of_young'] as String?,
      groupBehavior: json['group_behavior'] as String?,
      estimatedPopulationSize: json['estimated_population_size'] as String?,
      biggestThreat: json['biggest_threat'] as String?,
      mostDistinctiveFeature: json['most_distinctive_feature'] as String?,
      gestationPeriod: json['gestation_period'] as String?,
      habitat: json['habitat'] as String?,
      diet: json['diet'] as String?,
      averageLitterSize: json['average_litter_size'] as String?,
      lifestyle: json['lifestyle'] as String?,
      commonName: json['common_name'] as String?,
      numberOfSpecies: json['number_of_species'] as String?,
      location: json['location'] as String?,
      slogan: json['slogan'] as String?,
      group: json['group'] as String?,
      color: json['color'] as String?,
      skinType: json['skin_type'] as String?,
      topSpeed: json['top_speed'] as String?,
      lifespan: json['lifespan'] as String?,
      weight: json['weight'] as String?,
      height: json['height'] as String?,
      ageOfSexualMaturity: json['age_of_sexual_maturity'] as String?,
      ageOfWeaning: json['age_of_weaning'] as String?,
    );

Map<String, dynamic> _$CharacteristicsToJson(Characteristics instance) =>
    <String, dynamic>{
      'prey': instance.prey,
      'name_of_young': instance.nameOfYoung,
      'group_behavior': instance.groupBehavior,
      'estimated_population_size': instance.estimatedPopulationSize,
      'biggest_threat': instance.biggestThreat,
      'most_distinctive_feature': instance.mostDistinctiveFeature,
      'gestation_period': instance.gestationPeriod,
      'habitat': instance.habitat,
      'diet': instance.diet,
      'average_litter_size': instance.averageLitterSize,
      'lifestyle': instance.lifestyle,
      'common_name': instance.commonName,
      'number_of_species': instance.numberOfSpecies,
      'location': instance.location,
      'slogan': instance.slogan,
      'group': instance.group,
      'color': instance.color,
      'skin_type': instance.skinType,
      'top_speed': instance.topSpeed,
      'lifespan': instance.lifespan,
      'weight': instance.weight,
      'height': instance.height,
      'age_of_sexual_maturity': instance.ageOfSexualMaturity,
      'age_of_weaning': instance.ageOfWeaning,
    };
