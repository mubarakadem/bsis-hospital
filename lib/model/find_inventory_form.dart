import 'package:json_annotation/json_annotation.dart';
import 'distribution_site.dart';
import 'component_type.dart';

part 'find_inventory_form.g.dart';

@JsonSerializable()
class FindInventoryForm{
  List<DistributionSite>? distributionSites;
  List<ComponentType>? componentTypes;

  FindInventoryForm({this.distributionSites, this.componentTypes});

  factory FindInventoryForm.fromJson(Map<String, dynamic> json) => _$FindInventoryFormFromJson(json);
    Map<String, dynamic> toJson() => _$FindInventoryFormToJson(this);
}