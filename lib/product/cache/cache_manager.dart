abstract class ICacheManager<T extends BaseCacheModel> {
  Future<void> init();

  Future<void> writeAllDatas(List<T> items);

  List<T>? getAllValues();

  Future<void> clear();
}

abstract class BaseCacheModel {
  String? get id;
}
