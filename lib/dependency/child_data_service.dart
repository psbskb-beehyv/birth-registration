import 'package:birth_registration/app/data/child_data/child_data.dart';

class ChildDataService {
  ChildData? childData;
  ChildDataService({this.childData});

  update(ChildData childData) {
    this.childData = childData;
  }
}
