import 'dart:convert';
import 'dart:io';

import 'package:birth_registration/app/data/child_data/child_data.dart';
import 'package:flutter/services.dart';

class GlobalHandler {
  static Future<List<ChildData>> readChildDemoData() async {
    List<ChildData> childDataList = [];
    String dataString =
        await rootBundle.loadString('assets/data/child_data.json');
    List data = jsonDecode(dataString);
    for (var value in data) {
      ChildData childData = ChildData.fromJson(value);
      childDataList.add(childData);
    }
    return childDataList;
  }

  static writeChildDemoData(List<ChildData> childDataList) async {
    final File file = File('assets/data/child_data.json');
    file.writeAsStringSync(json.encode(childDataList));
  }
}
