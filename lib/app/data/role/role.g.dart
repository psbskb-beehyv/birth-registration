// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'role.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$RoleImpl _$$RoleImplFromJson(Map<String, dynamic> json) => _$RoleImpl(
      tenantId: json['tenantId'] as String,
      id: json['id'] as String?,
      name: json['name'] as String?,
      description: json['description'] as String?,
    );

Map<String, dynamic> _$$RoleImplToJson(_$RoleImpl instance) =>
    <String, dynamic>{
      'tenantId': instance.tenantId,
      'id': instance.id,
      'name': instance.name,
      'description': instance.description,
    };
