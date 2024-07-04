import 'package:birth_registration/app/data/child_data/child_data.dart';
import 'package:birth_registration/app/data/user_data/user_data.dart';
import 'package:birth_registration/app/modules/home/cubits/child_data_cubit.dart';
import 'package:digit_components/widgets/atoms/digit_toaster.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:intl/intl.dart';
import 'package:reactive_forms/reactive_forms.dart';

class EditDetailsHandler {
  late FormGroup childDataFromGroup;
  late FormGroup fatherDataFromGroup;
  late FormGroup motherDataFromGroup;
  final ChildData childData;
  EditDetailsHandler({required this.childData}) {
    childDataFromGroup = FormGroup({
      'babyFirstName': FormControl<String>(
        value: childData.babyFirstName,
        validators: [Validators.required],
      ),
      'babyLastName': FormControl<String>(
        value: childData.babyLastName ?? '',
      ),
      'doctorName': FormControl<String>(
        value: childData.doctorName,
        validators: [Validators.required],
      ),
      'hospitalName': FormControl<String>(
        value: childData.hospitalName,
        validators: [Validators.required],
      ),
      'placeOfBirth': FormControl<String>(
        value: childData.placeOfBirth,
        validators: [Validators.required],
      ),
      'timeOfBirth': FormControl<DateTime>(
        value: childData.timeOfBirth != null
            ? DateTime.parse(childData.timeOfBirth!)
            : null,
      ),
      'address': FormControl<String>(
        value: childData.address ?? '',
      ),
      'workflow': FormControl<String>(
        value: childData.workflow ?? '',
      ),
      'auditDetails': FormControl<String>(
        value: childData.auditDetails ?? '',
      ),
    });
    fatherDataFromGroup = FormGroup({
      'tenantId': FormControl<String>(
        value: childData.father.tenantId,
      ),
      'userName': FormControl<String>(
        disabled: true,
        value: childData.father.userName,
        validators: [Validators.required],
      ),
      'name': FormControl<String>(
        value: childData.father.name,
        validators: [Validators.required],
      ),
    });
    motherDataFromGroup = FormGroup({
      'tenantId': FormControl<String>(
        value: childData.mother.tenantId,
      ),
      'userName': FormControl<String>(
        disabled: true,
        value: childData.mother.userName,
        validators: [Validators.required],
      ),
      'name': FormControl<String>(
        value: childData.mother.name,
        validators: [Validators.required],
      ),
    });
  }

  Future<void> createNewChildData(
      BuildContext context, List<ChildData> childDataList) async {
    if (childDataFromGroup.valid &&
        fatherDataFromGroup.valid &&
        motherDataFromGroup.valid) {
      ChildData _childData = ChildData(
        id: childData.id,
        tenantId: childData.tenantId,
        applicationNumber: childData.applicationNumber,
        babyFirstName: childDataFromGroup.control('babyFirstName').value,
        babyLastName: childDataFromGroup.control('babyLastName').value,
        father: UserData(
          tenantId: childData.father.tenantId,
          userName: fatherDataFromGroup.control('userName').value,
          name: fatherDataFromGroup.control('name').value,
          roles: [],
        ),
        mother: UserData(
          tenantId: childData.mother.tenantId,
          userName: motherDataFromGroup.control('userName').value,
          name: motherDataFromGroup.control('name').value,
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
      context.read<ChildDataCubit>().updateChildData(_childData);
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
