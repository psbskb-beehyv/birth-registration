import 'package:birth_registration/app/data/child_data/child_data.dart';
import 'package:birth_registration/app/modules/edit_details/handler/edit_details_handler.dart';
import 'package:birth_registration/app/modules/home/cubits/child_data_cubit.dart';
import 'package:birth_registration/dependency/child_data_service.dart';
import 'package:birth_registration/extentions/custom_digit_date_form_picker.dart';
import 'package:digit_components/digit_components.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';
import 'package:go_router/go_router.dart';
import 'package:intl/intl.dart';
import 'package:reactive_forms/reactive_forms.dart';

class EditDetailsView extends StatelessWidget {
  const EditDetailsView({super.key});

  @override
  Widget build(BuildContext context) {
    ChildData? childData = GetIt.instance<ChildDataService>().childData;
    return SafeArea(
      child: EditDetailsWidget(childData: childData!),
    );
  }
}

class EditDetailsWidget extends StatelessWidget {
  final ChildData childData;
  const EditDetailsWidget({
    super.key,
    required this.childData,
  });

  @override
  Widget build(BuildContext context) {
    EditDetailsHandler editDetailsHandler =
        EditDetailsHandler(childData: childData);
    return Scaffold(
      body: Scaffold(
        appBar: AppBar(
          backgroundColor: Theme.of(context).primaryColor,
          leading: IconButton(
            onPressed: () {
              context.pop(true);
            },
            icon: const Icon(
              Icons.arrow_back_ios,
              color: Colors.white,
            ),
          ),
          titleSpacing: -20,
          title: TextButton(
              onPressed: () {
                context.pop(true);
              },
              child: Text(
                'Edit Details',
                style: Theme.of(context)
                    .textTheme
                    .titleMedium!
                    .copyWith(color: Colors.white),
              )),
        ),
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: ReactiveForm(
            formGroup: editDetailsHandler.childDataFromGroup,
            child: ListView(
              children: [
                Container(
                  decoration: BoxDecoration(
                      color: Theme.of(context).colorScheme.surface,
                      border: Border.all(
                        color: Theme.of(context).primaryColor,
                      ),
                      borderRadius: BorderRadius.circular(10)),
                  padding:
                      const EdgeInsets.symmetric(vertical: 0, horizontal: 16),
                  child: const DigitTextFormField(
                    isRequired: true,
                    label: 'Baby First Name',
                    formControlName: 'babyFirstName',
                  ),
                ),
                const SizedBox(height: 8),
                Container(
                  decoration: BoxDecoration(
                      color: Theme.of(context).colorScheme.surface,
                      border: Border.all(
                        color: Theme.of(context).primaryColor,
                      ),
                      borderRadius: BorderRadius.circular(10)),
                  padding:
                      const EdgeInsets.symmetric(vertical: 8, horizontal: 16),
                  child: const DigitTextFormField(
                    isRequired: false,
                    label: 'Baby Last Name',
                    formControlName: 'babyLastName',
                  ),
                ),
                const SizedBox(height: 8),
                UserFormWidget(
                  title: 'Father',
                  formGroup: editDetailsHandler.fatherDataFromGroup,
                ),
                const SizedBox(height: 8),
                UserFormWidget(
                  title: 'Mother',
                  formGroup: editDetailsHandler.motherDataFromGroup,
                ),
                const SizedBox(height: 8),
                Container(
                  decoration: BoxDecoration(
                      color: Theme.of(context).colorScheme.surface,
                      border: Border.all(
                        color: Theme.of(context).primaryColor,
                      ),
                      borderRadius: BorderRadius.circular(10)),
                  padding:
                      const EdgeInsets.symmetric(vertical: 8, horizontal: 16),
                  child: const DigitTextFormField(
                    isRequired: true,
                    label: 'Doctor Name',
                    formControlName: 'doctorName',
                  ),
                ),
                const SizedBox(height: 8),
                Container(
                  decoration: BoxDecoration(
                      color: Theme.of(context).colorScheme.surface,
                      border: Border.all(
                        color: Theme.of(context).primaryColor,
                      ),
                      borderRadius: BorderRadius.circular(10)),
                  padding:
                      const EdgeInsets.symmetric(vertical: 8, horizontal: 16),
                  child: const DigitTextFormField(
                    isRequired: true,
                    label: 'Hospital Name',
                    formControlName: 'hospitalName',
                  ),
                ),
                const SizedBox(height: 8),
                Container(
                  decoration: BoxDecoration(
                      color: Theme.of(context).colorScheme.surface,
                      border: Border.all(
                        color: Theme.of(context).primaryColor,
                      ),
                      borderRadius: BorderRadius.circular(10)),
                  padding:
                      const EdgeInsets.symmetric(vertical: 8, horizontal: 16),
                  child: const DigitTextFormField(
                    isRequired: true,
                    label: 'Place Of Birth',
                    formControlName: 'placeOfBirth',
                  ),
                ),
                const SizedBox(height: 8),
                DateTimeFormField(
                  label: "Time Of Birth",
                  formControlName: 'timeOfBirth',
                  formGroup: editDetailsHandler.childDataFromGroup,
                ),
                const SizedBox(height: 8),
                Container(
                  decoration: BoxDecoration(
                      color: Theme.of(context).colorScheme.surface,
                      border: Border.all(
                        color: Theme.of(context).primaryColor,
                      ),
                      borderRadius: BorderRadius.circular(10)),
                  padding:
                      const EdgeInsets.symmetric(vertical: 0, horizontal: 16),
                  child: const DigitTextFormField(
                    isRequired: false,
                    label: 'Address',
                    formControlName: 'address',
                  ),
                ),
                const SizedBox(height: 8),
                Container(
                  decoration: BoxDecoration(
                      color: Theme.of(context).colorScheme.surface,
                      border: Border.all(
                        color: Theme.of(context).primaryColor,
                      ),
                      borderRadius: BorderRadius.circular(10)),
                  padding:
                      const EdgeInsets.symmetric(vertical: 0, horizontal: 16),
                  child: const DigitTextFormField(
                    isRequired: false,
                    label: 'Workflow',
                    formControlName: 'workflow',
                  ),
                ),
                const SizedBox(height: 8),
                Container(
                  decoration: BoxDecoration(
                      color: Theme.of(context).colorScheme.surface,
                      border: Border.all(
                        color: Theme.of(context).primaryColor,
                      ),
                      borderRadius: BorderRadius.circular(10)),
                  padding:
                      const EdgeInsets.symmetric(vertical: 0, horizontal: 16),
                  child: const DigitTextFormField(
                    isRequired: false,
                    label: 'AuditDetails',
                    formControlName: 'auditDetails',
                  ),
                ),
                const SizedBox(height: 8),
                BlocBuilder<ChildDataCubit, List<ChildData>>(
                  builder: (context, listChildData) {
                    return DigitOutLineButton(
                      label: 'Edit Details',
                      onPressed: () {
                        editDetailsHandler.createNewChildData(
                            context, listChildData);
                      },
                      buttonStyle: ButtonStyle(
                        fixedSize: WidgetStateProperty.resolveWith((states) {
                          return const Size(0, 50);
                        }),
                        backgroundColor:
                            WidgetStateProperty.resolveWith((states) {
                          return Theme.of(context).primaryColor;
                        }),
                        textStyle: WidgetStateProperty.resolveWith((state) {
                          return Theme.of(context)
                              .textTheme
                              .labelLarge!
                              .copyWith(color: Colors.white);
                        }),
                      ),
                    );
                  },
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class DateTimeFormField extends StatefulWidget {
  final String label;
  final String formControlName;
  final FormGroup formGroup;
  const DateTimeFormField({
    super.key,
    required this.formControlName,
    required this.label,
    required this.formGroup,
  });

  @override
  State<DateTimeFormField> createState() => _DateTimeFormFieldState();
}

class _DateTimeFormFieldState extends State<DateTimeFormField> {
  TimeOfDay? pickedTime;
  DateTime? preDateTime;
  NumberFormat formatter = new NumberFormat("00");
  @override
  void initState() {
    setState(() {
      preDateTime = widget.formGroup.control(widget.formControlName).value;
      pickedTime = preDateTime == null
          ? null
          : TimeOfDay(hour: preDateTime!.hour, minute: preDateTime!.minute);
    });
    super.initState();
  }

  assignDate({DateTime? date, TimeOfDay? time}) {
    DateTime _date = date ?? preDateTime ?? DateTime.now();
    TimeOfDay _time =
        time ?? pickedTime ?? TimeOfDay(hour: _date.hour, minute: _date.minute);
    DateTime? newDate =
        DateTime(_date.year, _date.month, _date.day, _time.hour, _time.minute);
    widget.formGroup.control(widget.formControlName).updateValue(newDate);
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          decoration: BoxDecoration(
              color: Theme.of(context).colorScheme.surface,
              border: Border.all(
                color: Theme.of(context).primaryColor,
              ),
              borderRadius: BorderRadius.circular(10)),
          padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 16),
          child: CustomDigitDateFormPicker(
            label: widget.label,
            formControlName: widget.formControlName,
            isRequired: false,
            isEnabled: true,
            initialDate: preDateTime,
            confirmText: "Confirm",
            cancelText: "Cancel",
            onChangeOfDate: (value) {
              assignDate(date: value);
            },
          ),
        ),
        Align(
            alignment: Alignment.topRight,
            child: InkWell(
              onTap: () async {
                TimeOfDay? _pickedTime = await showTimePicker(
                  context: context,
                  initialTime: preDateTime == null
                      ? const TimeOfDay(hour: 0, minute: 0)
                      : TimeOfDay(
                          hour: preDateTime!.hour, minute: preDateTime!.minute),
                );
                if (_pickedTime != null) {
                  setState(() {
                    pickedTime = TimeOfDay(
                        hour: _pickedTime.hour, minute: _pickedTime.minute);
                  });
                  assignDate(time: pickedTime);
                }
              },
              child: Container(
                margin: const EdgeInsets.all(8),
                padding:
                    const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                decoration: BoxDecoration(
                  color: Theme.of(context).primaryColor,
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Text(
                  pickedTime == null
                      ? '_:_ __'
                      : '${formatter.format(pickedTime!.hour)}:${formatter.format(pickedTime!.minute)}',
                  style: Theme.of(context)
                      .textTheme
                      .labelSmall!
                      .copyWith(color: Colors.white),
                ),
              ),
            )),
      ],
    );
  }
}

class UserFormWidget extends StatelessWidget {
  final String title;
  final FormGroup formGroup;
  const UserFormWidget(
      {super.key, required this.title, required this.formGroup});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(4),
      decoration: BoxDecoration(
        color: Theme.of(context).primaryColor,
        borderRadius: BorderRadius.circular(10),
      ),
      child: ReactiveForm(
        formGroup: formGroup,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(4.0),
              child: Text(
                title,
                style: Theme.of(context)
                    .textTheme
                    .titleMedium!
                    .copyWith(color: Colors.white),
              ),
            ),
            Container(
              decoration: BoxDecoration(
                  color: Theme.of(context).colorScheme.surface,
                  border: Border.all(
                    color: Theme.of(context).primaryColor,
                  ),
                  borderRadius: BorderRadius.circular(10)),
              padding: const EdgeInsets.symmetric(vertical: 0, horizontal: 16),
              child: const DigitTextFormField(
                isRequired: true,
                label: 'User Name',
                formControlName: 'userName',
              ),
            ),
            const SizedBox(height: 8),
            Container(
              decoration: BoxDecoration(
                  color: Theme.of(context).colorScheme.surface,
                  border: Border.all(
                    color: Theme.of(context).primaryColor,
                  ),
                  borderRadius: BorderRadius.circular(10)),
              padding: const EdgeInsets.symmetric(vertical: 0, horizontal: 16),
              child: const DigitTextFormField(
                isRequired: true,
                label: 'Name',
                formControlName: 'name',
              ),
            ),
          ],
        ),
      ),
    );
  }
}
