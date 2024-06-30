import 'package:birth_registration/app/data/child_data/child_data.dart';
import 'package:birth_registration/app/modules/home/cubits/child_data_cubit.dart';
import 'package:digit_components/widgets/atoms/digit_toaster.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:intl/intl.dart';
import 'package:reactive_forms/reactive_forms.dart';

class EditDetailsHandler {
  late FormGroup childDataFromGroup;
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
  }

  Future<void> createNewChildData(
      BuildContext context, List<ChildData> childDataList) async {
    if (childDataFromGroup.valid) {
      ChildData _childData = ChildData(
        id: childData.id,
        tenantId: childData.tenantId,
        applicationNumber: childData.applicationNumber,
        babyFirstName: childDataFromGroup.control('babyFirstName').value,
        babyLastName: childDataFromGroup.control('babyLastName').value,
        father: childData.father,
        mother: childData.mother,
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
