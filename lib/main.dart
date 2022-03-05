import 'package:flutter/material.dart';
import 'package:izmir_sto/features/dog/view/dog_view.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Material App',
      home: DogView(),
    );
  }
}
