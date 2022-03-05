import 'package:flutter_test/flutter_test.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:izmir_sto/features/dog/service/dog_service.dart';
import 'package:izmir_sto/product/adapters/hive_adapter_items.dart';
import 'package:izmir_sto/product/cache/cache_manager.dart';
import 'package:izmir_sto/product/cache/dog_shared_cache.dart';
import 'package:izmir_sto/product/manager/product_network_manager.dart';
import 'package:shared_preferences/shared_preferences.dart';

void main() {
  late ICacheManager _dogHiveCache;
  late DogService dogService;
  setUp(() async {
    Hive.init('hivecache');
    HiveAdapterItems.init();
    SharedPreferences.setMockInitialValues({});
    _dogHiveCache = VeliCache();
    dogService = DogService(ProductNetworkManager());
    await _dogHiveCache.init();
  });
  test('Cache it items', () async {
    final items = await dogService.fetchDogs();
    await _dogHiveCache.writeAllDatas(items ?? []);
    final itemsCached = _dogHiveCache.getAllValues();
    expect(itemsCached, isNotEmpty);
  });
}
