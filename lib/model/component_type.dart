import 'package:json_annotation/json_annotation.dart';

part 'component_type.g.dart';

@JsonSerializable()
class ComponentType {
  String? id;
  String? componentTypeName;
  String? componentTypeCode;
  String? description;
  int? maxBleedTime;
  int? maxTimeSinceDonation;

  ComponentType({this.id, this.componentTypeName, this.componentTypeCode, this.description, this.maxBleedTime, this.maxTimeSinceDonation});

  factory ComponentType.fromJson(Map<String, dynamic> json) => _$ComponentTypeFromJson(json);
  Map<String, dynamic> toJson() => _$ComponentTypeToJson(this);
}