import 'package:digit_components/digit_components.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:reactive_forms/reactive_forms.dart';

class CreateView extends StatelessWidget {
  const CreateView({super.key});

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child: CreateWidget(),
    );
  }
}

class CreateWidget extends StatelessWidget {
  const CreateWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    SliverAppBar createSilverAppBar1() {
      return SliverAppBar(
        expandedHeight: 200,
        pinned: true,
        snap: false,
        floating: false,
        elevation: 0,
        leadingWidth: 0,
        backgroundColor: Theme.of(context).primaryColor,
        leading: IconButton(
            onPressed: () {
              print('pressed');
              context.pop();
            },
            icon: const Icon(
              Icons.arrow_back_ios,
              color: Colors.white,
            )),
        flexibleSpace: LayoutBuilder(
            builder: (BuildContext context, BoxConstraints constraints) {
          return FlexibleSpaceBar(
            centerTitle: true,
            expandedTitleScale: 1.2,
            title: Text(
              'Birth Registration',
              style: Theme.of(context)
                  .textTheme
                  .titleLarge!
                  .copyWith(color: Colors.white),
            ),
            collapseMode: CollapseMode.parallax,
            background: Container(
              decoration: BoxDecoration(
                color: Theme.of(context).primaryColor,
                image: const DecorationImage(
                    image: AssetImage('assets/images/baby.png')),
              ),
              child: Container(
                color: Colors.black38,
              ),
            ),
          );
        }),
      );
    }

    final form = FormGroup({
      'name': FormControl<String>(
        value: '',
        validators: [Validators.required],
      ),
      'father_name': FormControl<String>(
        value: '',
        validators: [Validators.required],
      ),
      'mother_name': FormControl<String>(
        value: '',
        validators: [Validators.required],
      ),
      'dob': FormControl<DateTime>(
        value: DateTime.now(),
      ),
      'hospital_name': FormControl<String>(
        value: '',
        validators: [Validators.required],
      ),
      'doctor_name': FormControl<String>(
        value: '',
        validators: [Validators.required],
      ),
      'place_of_birth': FormControl<String>(
        value: '',
        validators: [Validators.required],
      ),
    });

    return Scaffold(
      body: Scaffold(
        appBar: AppBar(
          backgroundColor: Theme.of(context).primaryColor,
          leading: IconButton(
            onPressed: () {
              context.pop();
            },
            icon: const Icon(
              Icons.arrow_back_ios,
              color: Colors.white,
            ),
          ),
          titleSpacing: -20,
          title: TextButton(
              onPressed: () {
                context.pop();
              },
              child: Text(
                'Birth Registration',
                style: Theme.of(context)
                    .textTheme
                    .titleMedium!
                    .copyWith(color: Colors.white),
              )),
        ),
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: ReactiveForm(
            formGroup: form,
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
                    label: 'Name',
                    formControlName: 'name',
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
                    isRequired: true,
                    label: 'Father Name',
                    formControlName: 'father_name',
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
                    label: 'Mother Name',
                    formControlName: 'mother_name',
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
                  child: DigitDateFormPicker(
                    label: "Birth Date",
                    formControlName: 'dob',
                    isRequired: true,
                    isEnabled: true,
                    initialDate: DateTime.now(),
                    confirmText: "Confirm",
                    cancelText: "Cancel",
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
                    isRequired: true,
                    label: 'Hospital name',
                    formControlName: 'hospital_name',
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
                    isRequired: true,
                    label: 'Doctor name',
                    formControlName: 'doctor_name',
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
                    isRequired: true,
                    label: 'Place of Birth',
                    formControlName: 'place_of_birth',
                  ),
                ),
                const SizedBox(height: 8),
                DigitOutLineButton(
                  label: 'Register',
                  onPressed: () {},
                  buttonStyle: ButtonStyle(
                    fixedSize: WidgetStateProperty.resolveWith((states) {
                      return const Size(0, 50);
                    }),
                    backgroundColor: WidgetStateProperty.resolveWith((states) {
                      return Theme.of(context).primaryColor;
                    }),
                    textStyle: WidgetStateProperty.resolveWith((state) {
                      return Theme.of(context)
                          .textTheme
                          .labelLarge!
                          .copyWith(color: Colors.white);
                    }),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
