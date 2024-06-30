import 'package:birth_registration/app/data/child_data/child_data.dart';
import 'package:birth_registration/app/data/user_data/user_data.dart';
import 'package:birth_registration/app/modules/home/cubits/child_data_cubit.dart';
import 'package:digit_components/digit_components.dart';
import 'package:digit_components/widgets/atoms/digit_toaster.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:intl/intl.dart';
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
      value: null,
    ),
    'address': FormControl<String>(
      value: '',
    ),
    'workflow': FormControl<String>(
      value: '',
    ),
    'auditDetails': FormControl<String>(
      value: '',
    ),
  });

  static Future<void> createNewChildData(
      BuildContext context, List<ChildData> childDataList) async {
    if (childDataFromGroup.valid) {
      ChildData childData = ChildData(
        id: Uuid().v1(),
        tenantId: (childDataList.length + 1).toString(),
        applicationNumber: Uuid().v1(),
        babyFirstName: childDataFromGroup.control('babyFirstName').value,
        babyLastName: childDataFromGroup.control('babyLastName').value,
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
        doctorName: childDataFromGroup.control('doctorName').value,
        hospitalName: childDataFromGroup.control('hospitalName').value,
        placeOfBirth: childDataFromGroup.control('placeOfBirth').value,
        timeOfBirth: childDataFromGroup.control('timeOfBirth').value != null
            ? DateFormat("yyyy-MM-dd HH:mm:ss")
                .format(childDataFromGroup.control('timeOfBirth').value)
            : null,
        address: childDataFromGroup.control('address').value,
        workflow: childDataFromGroup.control('workflow').value,
        auditDetails: childDataFromGroup.control('auditDetails').value,
      );
      context.read<ChildDataCubit>().updateChildData(childData);
      context.go('/');
    } else {
      DigitToast.show(
        context,
        options: DigitToastOptions(
            'Please fill all the required field', false, ThemeData()),
      );
    }
  }
}
