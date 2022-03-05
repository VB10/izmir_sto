import 'package:flutter/material.dart';
import 'package:kartal/kartal.dart';

import '../view_model/dog_view_model.dart';

class DogView extends StatefulWidget {
  const DogView({Key? key}) : super(key: key);

  @override
  State<DogView> createState() => _DogViewState();
}

class _DogViewState extends DogViewModel {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          leading: const Center(
        child: CircularProgressIndicator(),
      ).toVisible(isLoading)),
      body: GridView.builder(
          itemCount: dogItems.length,
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
          itemBuilder: (context, index) {
            return Card(
              child: ListTile(
                title: Column(
                  children: [
                    Image.network(dogItems[index].imageUrl ?? '').toVisible(dogItems[index].imageUrl != null),
                    Text(dogItems[index].code.toString()),
                  ],
                ),
              ),
            );
          }),
    );
  }
}
