import 'package:flutter_test/flutter_test.dart';
import 'package:izmir_sto/features/dog/service/dog_service.dart';
import 'package:izmir_sto/product/manager/product_network_manager.dart';

void main() {
  late IDogService dogService;
  setUp(() {
    dogService = DogService(ProductNetworkManager());
  });
  test('Fetch All dogs', () async {
    final response = await dogService.fetchDogs();

    expect(response, isNotNull);
  });
}
