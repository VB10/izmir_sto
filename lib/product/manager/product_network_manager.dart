import 'package:vexana/vexana.dart';

class ProductNetworkManager extends NetworkManager {
  ProductNetworkManager() : super(options: BaseOptions(baseUrl: 'https://hwasampleapi.firebaseio.com/'));
}
