import 'package:json_annotation/json_annotation.dart';

part 'distribution_site.g.dart';

@JsonSerializable()
class DistributionSite {
  String? id;
  String? name;
  bool? isMobileSite;
  bool? isTestingSite;
  bool? isDeleted;
  bool? isVenue;
  bool? isUsageSite;
  bool? isProcessingSite;
  bool? isDistributionSite;
  bool? isReferralSite;

  DistributionSite(
      {this.id,
      this.name,
      this.isMobileSite,
      this.isTestingSite,
      this.isDeleted,
      this.isVenue,
      this.isUsageSite,
      this.isProcessingSite,
      this.isDistributionSite,
      this.isReferralSite}
      );

  factory DistributionSite.fromJson(Map<String, dynamic> json) =>
      _$DistributionSiteFromJson(json);

  Map<String, dynamic> toJson() => _$DistributionSiteToJson(this);
}
