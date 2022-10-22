// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'component_type.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ComponentType _$ComponentTypeFromJson(Map<String, dynamic> json) =>
    ComponentType(
      id: json['id'] as String?,
      componentTypeName: json['componentTypeName'] as String?,
      componentTypeCode: json['componentTypeCode'] as String?,
      description: json['description'] as String?,
      maxBleedTime: json['maxBleedTime'] as int?,
      maxTimeSinceDonation: json['maxTimeSinceDonation'] as int?,
    );

Map<String, dynamic> _$ComponentTypeToJson(ComponentType instance) =>
    <String, dynamic>{
      'id': instance.id,
      'componentTypeName': instance.componentTypeName,
      'componentTypeCode': instance.componentTypeCode,
      'description': instance.description,
      'maxBleedTime': instance.maxBleedTime,
      'maxTimeSinceDonation': instance.maxTimeSinceDonation,
    };
