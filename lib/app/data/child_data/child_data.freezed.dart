// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'child_data.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ChildData _$ChildDataFromJson(Map<String, dynamic> json) {
  return _ChildData.fromJson(json);
}

/// @nodoc
mixin _$ChildData {
  String? get id => throw _privateConstructorUsedError;
  String get tenantId => throw _privateConstructorUsedError;
  String? get applicationNumber => throw _privateConstructorUsedError;
  String get babyFirstName => throw _privateConstructorUsedError;
  String? get babyLastName => throw _privateConstructorUsedError;
  UserData get father => throw _privateConstructorUsedError;
  UserData get mother => throw _privateConstructorUsedError;
  String get doctorName => throw _privateConstructorUsedError;
  String get hospitalName => throw _privateConstructorUsedError;
  String get placeOfBirth => throw _privateConstructorUsedError;
  String? get timeOfBirth => throw _privateConstructorUsedError;
  String? get address => throw _privateConstructorUsedError;
  String? get workflow => throw _privateConstructorUsedError;
  String? get auditDetails => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ChildDataCopyWith<ChildData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ChildDataCopyWith<$Res> {
  factory $ChildDataCopyWith(ChildData value, $Res Function(ChildData) then) =
      _$ChildDataCopyWithImpl<$Res, ChildData>;
  @useResult
  $Res call(
      {String? id,
      String tenantId,
      String? applicationNumber,
      String babyFirstName,
      String? babyLastName,
      UserData father,
      UserData mother,
      String doctorName,
      String hospitalName,
      String placeOfBirth,
      String? timeOfBirth,
      String? address,
      String? workflow,
      String? auditDetails});

  $UserDataCopyWith<$Res> get father;
  $UserDataCopyWith<$Res> get mother;
}

/// @nodoc
class _$ChildDataCopyWithImpl<$Res, $Val extends ChildData>
    implements $ChildDataCopyWith<$Res> {
  _$ChildDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? tenantId = null,
    Object? applicationNumber = freezed,
    Object? babyFirstName = null,
    Object? babyLastName = freezed,
    Object? father = null,
    Object? mother = null,
    Object? doctorName = null,
    Object? hospitalName = null,
    Object? placeOfBirth = null,
    Object? timeOfBirth = freezed,
    Object? address = freezed,
    Object? workflow = freezed,
    Object? auditDetails = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      tenantId: null == tenantId
          ? _value.tenantId
          : tenantId // ignore: cast_nullable_to_non_nullable
              as String,
      applicationNumber: freezed == applicationNumber
          ? _value.applicationNumber
          : applicationNumber // ignore: cast_nullable_to_non_nullable
              as String?,
      babyFirstName: null == babyFirstName
          ? _value.babyFirstName
          : babyFirstName // ignore: cast_nullable_to_non_nullable
              as String,
      babyLastName: freezed == babyLastName
          ? _value.babyLastName
          : babyLastName // ignore: cast_nullable_to_non_nullable
              as String?,
      father: null == father
          ? _value.father
          : father // ignore: cast_nullable_to_non_nullable
              as UserData,
      mother: null == mother
          ? _value.mother
          : mother // ignore: cast_nullable_to_non_nullable
              as UserData,
      doctorName: null == doctorName
          ? _value.doctorName
          : doctorName // ignore: cast_nullable_to_non_nullable
              as String,
      hospitalName: null == hospitalName
          ? _value.hospitalName
          : hospitalName // ignore: cast_nullable_to_non_nullable
              as String,
      placeOfBirth: null == placeOfBirth
          ? _value.placeOfBirth
          : placeOfBirth // ignore: cast_nullable_to_non_nullable
              as String,
      timeOfBirth: freezed == timeOfBirth
          ? _value.timeOfBirth
          : timeOfBirth // ignore: cast_nullable_to_non_nullable
              as String?,
      address: freezed == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String?,
      workflow: freezed == workflow
          ? _value.workflow
          : workflow // ignore: cast_nullable_to_non_nullable
              as String?,
      auditDetails: freezed == auditDetails
          ? _value.auditDetails
          : auditDetails // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $UserDataCopyWith<$Res> get father {
    return $UserDataCopyWith<$Res>(_value.father, (value) {
      return _then(_value.copyWith(father: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $UserDataCopyWith<$Res> get mother {
    return $UserDataCopyWith<$Res>(_value.mother, (value) {
      return _then(_value.copyWith(mother: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ChildDataImplCopyWith<$Res>
    implements $ChildDataCopyWith<$Res> {
  factory _$$ChildDataImplCopyWith(
          _$ChildDataImpl value, $Res Function(_$ChildDataImpl) then) =
      __$$ChildDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? id,
      String tenantId,
      String? applicationNumber,
      String babyFirstName,
      String? babyLastName,
      UserData father,
      UserData mother,
      String doctorName,
      String hospitalName,
      String placeOfBirth,
      String? timeOfBirth,
      String? address,
      String? workflow,
      String? auditDetails});

  @override
  $UserDataCopyWith<$Res> get father;
  @override
  $UserDataCopyWith<$Res> get mother;
}

/// @nodoc
class __$$ChildDataImplCopyWithImpl<$Res>
    extends _$ChildDataCopyWithImpl<$Res, _$ChildDataImpl>
    implements _$$ChildDataImplCopyWith<$Res> {
  __$$ChildDataImplCopyWithImpl(
      _$ChildDataImpl _value, $Res Function(_$ChildDataImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? tenantId = null,
    Object? applicationNumber = freezed,
    Object? babyFirstName = null,
    Object? babyLastName = freezed,
    Object? father = null,
    Object? mother = null,
    Object? doctorName = null,
    Object? hospitalName = null,
    Object? placeOfBirth = null,
    Object? timeOfBirth = freezed,
    Object? address = freezed,
    Object? workflow = freezed,
    Object? auditDetails = freezed,
  }) {
    return _then(_$ChildDataImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      tenantId: null == tenantId
          ? _value.tenantId
          : tenantId // ignore: cast_nullable_to_non_nullable
              as String,
      applicationNumber: freezed == applicationNumber
          ? _value.applicationNumber
          : applicationNumber // ignore: cast_nullable_to_non_nullable
              as String?,
      babyFirstName: null == babyFirstName
          ? _value.babyFirstName
          : babyFirstName // ignore: cast_nullable_to_non_nullable
              as String,
      babyLastName: freezed == babyLastName
          ? _value.babyLastName
          : babyLastName // ignore: cast_nullable_to_non_nullable
              as String?,
      father: null == father
          ? _value.father
          : father // ignore: cast_nullable_to_non_nullable
              as UserData,
      mother: null == mother
          ? _value.mother
          : mother // ignore: cast_nullable_to_non_nullable
              as UserData,
      doctorName: null == doctorName
          ? _value.doctorName
          : doctorName // ignore: cast_nullable_to_non_nullable
              as String,
      hospitalName: null == hospitalName
          ? _value.hospitalName
          : hospitalName // ignore: cast_nullable_to_non_nullable
              as String,
      placeOfBirth: null == placeOfBirth
          ? _value.placeOfBirth
          : placeOfBirth // ignore: cast_nullable_to_non_nullable
              as String,
      timeOfBirth: freezed == timeOfBirth
          ? _value.timeOfBirth
          : timeOfBirth // ignore: cast_nullable_to_non_nullable
              as String?,
      address: freezed == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String?,
      workflow: freezed == workflow
          ? _value.workflow
          : workflow // ignore: cast_nullable_to_non_nullable
              as String?,
      auditDetails: freezed == auditDetails
          ? _value.auditDetails
          : auditDetails // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ChildDataImpl implements _ChildData {
  _$ChildDataImpl(
      {this.id,
      required this.tenantId,
      this.applicationNumber,
      required this.babyFirstName,
      this.babyLastName,
      required this.father,
      required this.mother,
      required this.doctorName,
      required this.hospitalName,
      required this.placeOfBirth,
      this.timeOfBirth,
      this.address,
      this.workflow,
      this.auditDetails});

  factory _$ChildDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$ChildDataImplFromJson(json);

  @override
  final String? id;
  @override
  final String tenantId;
  @override
  final String? applicationNumber;
  @override
  final String babyFirstName;
  @override
  final String? babyLastName;
  @override
  final UserData father;
  @override
  final UserData mother;
  @override
  final String doctorName;
  @override
  final String hospitalName;
  @override
  final String placeOfBirth;
  @override
  final String? timeOfBirth;
  @override
  final String? address;
  @override
  final String? workflow;
  @override
  final String? auditDetails;

  @override
  String toString() {
    return 'ChildData(id: $id, tenantId: $tenantId, applicationNumber: $applicationNumber, babyFirstName: $babyFirstName, babyLastName: $babyLastName, father: $father, mother: $mother, doctorName: $doctorName, hospitalName: $hospitalName, placeOfBirth: $placeOfBirth, timeOfBirth: $timeOfBirth, address: $address, workflow: $workflow, auditDetails: $auditDetails)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ChildDataImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.tenantId, tenantId) ||
                other.tenantId == tenantId) &&
            (identical(other.applicationNumber, applicationNumber) ||
                other.applicationNumber == applicationNumber) &&
            (identical(other.babyFirstName, babyFirstName) ||
                other.babyFirstName == babyFirstName) &&
            (identical(other.babyLastName, babyLastName) ||
                other.babyLastName == babyLastName) &&
            (identical(other.father, father) || other.father == father) &&
            (identical(other.mother, mother) || other.mother == mother) &&
            (identical(other.doctorName, doctorName) ||
                other.doctorName == doctorName) &&
            (identical(other.hospitalName, hospitalName) ||
                other.hospitalName == hospitalName) &&
            (identical(other.placeOfBirth, placeOfBirth) ||
                other.placeOfBirth == placeOfBirth) &&
            (identical(other.timeOfBirth, timeOfBirth) ||
                other.timeOfBirth == timeOfBirth) &&
            (identical(other.address, address) || other.address == address) &&
            (identical(other.workflow, workflow) ||
                other.workflow == workflow) &&
            (identical(other.auditDetails, auditDetails) ||
                other.auditDetails == auditDetails));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      tenantId,
      applicationNumber,
      babyFirstName,
      babyLastName,
      father,
      mother,
      doctorName,
      hospitalName,
      placeOfBirth,
      timeOfBirth,
      address,
      workflow,
      auditDetails);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ChildDataImplCopyWith<_$ChildDataImpl> get copyWith =>
      __$$ChildDataImplCopyWithImpl<_$ChildDataImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ChildDataImplToJson(
      this,
    );
  }
}

abstract class _ChildData implements ChildData {
  factory _ChildData(
      {final String? id,
      required final String tenantId,
      final String? applicationNumber,
      required final String babyFirstName,
      final String? babyLastName,
      required final UserData father,
      required final UserData mother,
      required final String doctorName,
      required final String hospitalName,
      required final String placeOfBirth,
      final String? timeOfBirth,
      final String? address,
      final String? workflow,
      final String? auditDetails}) = _$ChildDataImpl;

  factory _ChildData.fromJson(Map<String, dynamic> json) =
      _$ChildDataImpl.fromJson;

  @override
  String? get id;
  @override
  String get tenantId;
  @override
  String? get applicationNumber;
  @override
  String get babyFirstName;
  @override
  String? get babyLastName;
  @override
  UserData get father;
  @override
  UserData get mother;
  @override
  String get doctorName;
  @override
  String get hospitalName;
  @override
  String get placeOfBirth;
  @override
  String? get timeOfBirth;
  @override
  String? get address;
  @override
  String? get workflow;
  @override
  String? get auditDetails;
  @override
  @JsonKey(ignore: true)
  _$$ChildDataImplCopyWith<_$ChildDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
