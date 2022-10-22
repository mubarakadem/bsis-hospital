// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'find_inventory_form.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

FindInventoryForm _$FindInventoryFormFromJson(Map<String, dynamic> json) =>
    FindInventoryForm(
      distributionSites: (json['distributionSites'] as List<dynamic>?)
          ?.map((e) => DistributionSite.fromJson(e as Map<String, dynamic>))
          .toList(),
      componentTypes: (json['componentTypes'] as List<dynamic>?)
          ?.map((e) => ComponentType.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$FindInventoryFormToJson(FindInventoryForm instance) =>
    <String, dynamic>{
      'distributionSites': instance.distributionSites,
      'componentTypes': instance.componentTypes,
    };
