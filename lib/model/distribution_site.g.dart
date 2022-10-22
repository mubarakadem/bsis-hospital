// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'distribution_site.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DistributionSite _$DistributionSiteFromJson(Map<String, dynamic> json) =>
    DistributionSite(
      id: json['id'] as String?,
      name: json['name'] as String?,
      isMobileSite: json['isMobileSite'] as bool?,
      isTestingSite: json['isTestingSite'] as bool?,
      isDeleted: json['isDeleted'] as bool?,
      isVenue: json['isVenue'] as bool?,
      isUsageSite: json['isUsageSite'] as bool?,
      isProcessingSite: json['isProcessingSite'] as bool?,
      isDistributionSite: json['isDistributionSite'] as bool?,
      isReferralSite: json['isReferralSite'] as bool?,
    );

Map<String, dynamic> _$DistributionSiteToJson(DistributionSite instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'isMobileSite': instance.isMobileSite,
      'isTestingSite': instance.isTestingSite,
      'isDeleted': instance.isDeleted,
      'isVenue': instance.isVenue,
      'isUsageSite': instance.isUsageSite,
      'isProcessingSite': instance.isProcessingSite,
      'isDistributionSite': instance.isDistributionSite,
      'isReferralSite': instance.isReferralSite,
    };
