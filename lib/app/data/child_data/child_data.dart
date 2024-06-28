import 'package:freezed_annotation/freezed_annotation.dart';

import '../user_data/user_data.dart';

part 'child_data.freezed.dart';
part 'child_data.g.dart';

@freezed
class ChildData with _$ChildData {
  factory ChildData({
    String? id,
    required String tenantId,
    String? applicationNumber,
    required String babyFirstName,
    String? babyLastName,
    required UserData father,
    required UserData mother,
    required String doctorName,
    required String hospitalName,
    required String placeOfBirth,
    String? timeOfBirth,
    String? address,
    String? workflow,
    String? auditDetails,
  }) = _ChildData;

  factory ChildData.fromJson(Map<String, Object?> json) =>
      _$ChildDataFromJson(json);
}
