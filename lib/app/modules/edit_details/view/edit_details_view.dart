import 'package:birth_registration/app/data/child_data/child_data.dart';
import 'package:birth_registration/dependency/child_data_service.dart';
import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';

class EditDetailsView extends StatelessWidget {
  const EditDetailsView({super.key});

  @override
  Widget build(BuildContext context) {
    ChildData? childData = GetIt.instance<ChildDataService>().childData;
    print(childData!.toJson());
    return const Placeholder();
  }
}
