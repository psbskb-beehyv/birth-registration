import 'package:birth_registration/dependency/child_data_service.dart';
import 'package:get_it/get_it.dart';

class Injector {
  static void init() {
    GetIt.instance.registerSingleton<ChildDataService>(ChildDataService());
  }
}
