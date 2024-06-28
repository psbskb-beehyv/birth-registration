import 'package:birth_registration/app/data/role/role.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_data.freezed.dart';
part 'user_data.g.dart';

@freezed
class UserData with _$UserData {
  const factory UserData({
    required String tenantId,
    int? id,
    String? uuid,
    required String userName,
    String? mobileNumber,
    String? emailId,
    required List<Role> roles,
    String? salutation,
    String? name,
    String? gender,
    String? alternateMobileNumber,
    String? altContactNumber,
    String? pan,
    String? aadhaarNumber,
    String? permanentAddress,
    String? permanentCity,
    String? permanentPincode,
    String? correspondenceAddress,
    String? correspondenceCity,
    String? correspondencePincode,
    bool? active,
    String? locale,
    String? type,
    bool? accountLocked,
    int? accountLockedDate,
    String? fatherOrHusbandName,
    String? relationship,
    String? signature,
    String? bloodGroup,
    String? photo,
    String? identificationMark,
    int? createdBy,
    String? password,
    String? otpReference,
    int? lastModifiedBy,
    String? createdDate,
    String? lastModifiedDate,
    int? dob,
    int? pwdExpiryDate,
  }) = _UserData;

  factory UserData.fromJson(Map<String, Object?> json) =>
      _$UserDataFromJson(json);
}
