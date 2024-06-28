import 'package:freezed_annotation/freezed_annotation.dart';

part 'role.freezed.dart';
part 'role.g.dart';

@freezed
class Role with _$Role {
  const factory Role({
    required String tenantId,
    String? id,
    String? name,
    String? description,
  }) = _Role;

  factory Role.fromJson(Map<String, Object?> json) => _$RoleFromJson(json);
}
