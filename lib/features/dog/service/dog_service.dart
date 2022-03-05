import 'package:izmir_sto/features/dog/model/dog_model.dart';
import 'package:vexana/vexana.dart';

abstract class IDogService {
  final INetworkManager _networkManager;

  IDogService(INetworkManager networkManager) : _networkManager = networkManager;

  Future<List<DogModel>?> fetchDogs();
}

enum _DogPath { dogs }

extension on _DogPath {
  String get withJson => '$name.json';
}

class DogService extends IDogService {
  DogService(INetworkManager networkManager) : super(networkManager);

  @override
  Future<List<DogModel>?> fetchDogs() async {
    final response = await _networkManager.send<DogModel, List<DogModel>>(_DogPath.dogs.withJson,
        parseModel: DogModel(), method: RequestType.GET);
    return response.data;
  }
}
