// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'child_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ChildDataImpl _$$ChildDataImplFromJson(Map<String, dynamic> json) =>
    _$ChildDataImpl(
      id: json['id'] as String?,
      tenantId: json['tenantId'] as String,
      applicationNumber: json['applicationNumber'] as String?,
      babyFirstName: json['babyFirstName'] as String,
      babyLastName: json['babyLastName'] as String?,
      father: UserData.fromJson(json['father'] as Map<String, dynamic>),
      mother: UserData.fromJson(json['mother'] as Map<String, dynamic>),
      doctorName: json['doctorName'] as String,
      hospitalName: json['hospitalName'] as String,
      placeOfBirth: json['placeOfBirth'] as String,
      timeOfBirth: json['timeOfBirth'] as String?,
      address: json['address'] as String?,
      workflow: json['workflow'] as String?,
      auditDetails: json['auditDetails'] as String?,
    );

Map<String, dynamic> _$$ChildDataImplToJson(_$ChildDataImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'tenantId': instance.tenantId,
      'applicationNumber': instance.applicationNumber,
      'babyFirstName': instance.babyFirstName,
      'babyLastName': instance.babyLastName,
      'father': instance.father,
      'mother': instance.mother,
      'doctorName': instance.doctorName,
      'hospitalName': instance.hospitalName,
      'placeOfBirth': instance.placeOfBirth,
      'timeOfBirth': instance.timeOfBirth,
      'address': instance.address,
      'workflow': instance.workflow,
      'auditDetails': instance.auditDetails,
    };
