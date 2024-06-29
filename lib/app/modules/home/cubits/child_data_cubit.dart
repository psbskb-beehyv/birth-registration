import 'package:birth_registration/app/data/child_data/child_data.dart';
import 'package:birth_registration/handler/global_handler.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ChildDataCubit extends Cubit<List<ChildData>> {
  ChildDataCubit() : super([]);

  List<ChildData> childDataList = [];

  loadChildData() async {
    childDataList = await GlobalHandler.readChildDemoData();
    emit(childDataList);
  }

  updateChildData(ChildData childData) {
    int index = childDataList
        .indexWhere((element) => element.tenantId == childData.tenantId);
    if (index == -1) {
      childDataList.add(childData);
    } else {
      childDataList[index] = childData;
    }
    final Iterable<ChildData> childDataListI = List.unmodifiable(childDataList);
    emit(childDataListI.toList());
  }
}
