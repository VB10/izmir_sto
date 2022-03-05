import 'dart:convert';

import 'package:izmir_sto/features/dog/model/dog_model.dart';
import 'package:izmir_sto/product/cache/cache_manager.dart';
import 'package:shared_preferences/shared_preferences.dart';

class DogSharedCache extends ICacheManager<DogModel> {
  late SharedPreferences _preferences;
  @override
  Future<void> clear() async {
    _preferences.clear();
  }

  @override
  List<DogModel>? getAllValues() {
    return _preferences.getStringList(toString())?.map((e) => DogModel.fromJson(jsonDecode(e))).toList();
  }

  @override
  Future<void> init() async {
    _preferences = await SharedPreferences.getInstance();
  }

  @override
  Future<void> writeAllDatas(List<DogModel> items) async {
    await _preferences.setStringList(toString(), items.map((e) => jsonEncode(e)).toList());
  }
}

class VeliCache extends ICacheManager<DogModel> {
  @override
  Future<void> clear() async {}

  @override
  List<DogModel>? getAllValues() {
    return null;
  }

  @override
  Future<void> init() {
    // TODO: implement init
    throw UnimplementedError();
  }

  @override
  Future<void> writeAllDatas(List<DogModel> items) async {
    print(items);
  }
}
