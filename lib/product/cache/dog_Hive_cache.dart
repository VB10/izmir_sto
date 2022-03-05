import 'package:hive_flutter/hive_flutter.dart';
import 'package:izmir_sto/features/dog/model/dog_model.dart';
import 'package:izmir_sto/product/cache/cache_manager.dart';

class DogHiveCache extends ICacheManager<DogModel> {
  late Box<DogModel> _dogBox;

  @override
  Future<void> init() async {
    _dogBox = await Hive.openBox(toString());
  }

  @override
  Future<void> writeAllDatas(List<DogModel> items) async {
    await _dogBox.putAll(Map.fromIterables(items.map((e) => e.code), items));
  }

  @override
  List<DogModel>? getAllValues() {
    return _dogBox.values.toList();
  }

  @override
  Future<void> clear() {
    return _dogBox.clear();
  }
}
