import 'package:flutter/material.dart';
import 'package:izmir_sto/features/dog/model/dog_model.dart';
import 'package:izmir_sto/features/dog/service/dog_service.dart';
import 'package:izmir_sto/product/manager/product_network_manager.dart';

import '../view/dog_view.dart';

abstract class DogViewModel extends State<DogView> {
  late IDogService _dogService;

  List<DogModel> dogItems = [];
  bool isLoading = false;

  @override
  void initState() {
    super.initState();
    _dogService = DogService(ProductNetworkManager());
    fetchItems();
  }

  Future<void> fetchItems() async {
    _changeLoading();
    dogItems = (await _dogService.fetchDogs()) ?? [];
    _changeLoading();
  }

  void _changeLoading() {
    setState(() {
      isLoading = !isLoading;
    });
  }
}
