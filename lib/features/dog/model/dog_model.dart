import 'dart:typed_data';

import 'package:equatable/equatable.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:izmir_sto/product/cache/cache_manager.dart';
import 'package:izmir_sto/product/cosntants/hive_constants.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:vexana/vexana.dart';

part 'dog_model.g.dart';

@JsonSerializable()
@HiveType(typeId: HiveConstants.dogModelType)
class DogModel extends INetworkModel<DogModel> with EquatableMixin, BaseCacheModel {
  @override
  String? get id => code.toString();

  @HiveField(0)
  final int? code;

  @HiveField(1)
  final String? description;

  @HiveField(2)
  final String? imageUrl;

  @HiveField(3)
  @JsonKey(ignore: true)
  final Uint8List? imageBytes;

  DogModel({this.code, this.imageBytes, this.description, this.imageUrl});
  @override
  DogModel fromJson(Map<String, dynamic> json) {
    return _$DogModelFromJson(json);
  }

  factory DogModel.fromJson(Map<String, dynamic> json) {
    return _$DogModelFromJson(json);
  }
  @override
  Map<String, dynamic> toJson() {
    return _$DogModelToJson(this);
  }

  @override
  List<Object?> get props => [code, description, imageUrl];

  DogModel copyWith({
    int? code,
    String? description,
    String? imageUrl,
    Uint8List? imageBytes,
  }) {
    return DogModel(
      code: code ?? this.code,
      description: description ?? this.description,
      imageUrl: imageUrl ?? this.imageUrl,
      imageBytes: imageBytes ?? this.imageBytes,
    );
  }
}
