import 'package:birth_registration/app/data/child_data/child_data.dart';
import 'package:birth_registration/app/data/user_data/user_data.dart';
import 'package:birth_registration/app/modules/home/cubits/child_data_cubit.dart';
import 'package:birth_registration/handler/global_handler.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:reactive_forms/reactive_forms.dart';
import 'package:uuid/uuid.dart';

class CreateHandler {
  static final childDataFromGroup = FormGroup({
    'babyFirstName': FormControl<String>(
      value: '',
      validators: [Validators.required],
    ),
    'babyLastName': FormControl<String>(
      value: '',
      validators: [Validators.required],
    ),
    'doctorName': FormControl<String>(
      value: '',
      validators: [Validators.required],
    ),
    'hospitalName': FormControl<String>(
      value: '',
      validators: [Validators.required],
    ),
    'placeOfBirth': FormControl<String>(
      value: '',
      validators: [Validators.required],
    ),
    'timeOfBirth': FormControl<DateTime>(
      value: DateTime.now(),
    ),
    'address': FormControl<String>(
      value: '',
      validators: [Validators.required],
    ),
    'workflow': FormControl<String>(
      value: '',
      validators: [Validators.required],
    ),
    'auditDetails': FormControl<String>(
      value: '',
      validators: [Validators.required],
    ),
  });

  static Future<void> createNewChildData(
      BuildContext context, List<ChildData> childDataList) async {
    // if (childDataFromGroup.valid){

    // }
    ChildData childData = ChildData(
      tenantId: const Uuid().v1(),
      babyFirstName: childDataFromGroup.control('babyFirstName').value,
      father: const UserData(
        tenantId: 'tenantId',
        userName: 'userName',
        roles: [],
      ),
      mother: const UserData(
        tenantId: 'tenantId',
        userName: 'userName',
        roles: [],
      ),
      doctorName: childDataFromGroup.control('babyFirstName').value,
      hospitalName: childDataFromGroup.control('babyFirstName').value,
      placeOfBirth: childDataFromGroup.control('babyFirstName').value,
    );
    context.read<ChildDataCubit>().updateChildData(childData);
    context.go('/');
  }
}
