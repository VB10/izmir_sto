import 'package:hive_flutter/adapters.dart';
import 'package:izmir_sto/features/dog/model/dog_model.dart';

class HiveAdapterItems {
  HiveAdapterItems.init() {
    Hive.registerAdapter(DogModelAdapter());
  }
}
