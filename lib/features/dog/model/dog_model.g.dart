// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'dog_model.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class DogModelAdapter extends TypeAdapter<DogModel> {
  @override
  final int typeId = 1;

  @override
  DogModel read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return DogModel(
      code: fields[0] as int?,
      imageBytes: fields[3] as Uint8List?,
      description: fields[1] as String?,
      imageUrl: fields[2] as String?,
    );
  }

  @override
  void write(BinaryWriter writer, DogModel obj) {
    writer
      ..writeByte(4)
      ..writeByte(0)
      ..write(obj.code)
      ..writeByte(1)
      ..write(obj.description)
      ..writeByte(2)
      ..write(obj.imageUrl)
      ..writeByte(3)
      ..write(obj.imageBytes);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is DogModelAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DogModel _$DogModelFromJson(Map<String, dynamic> json) => DogModel(
      code: json['code'] as int?,
      description: json['description'] as String?,
      imageUrl: json['imageUrl'] as String?,
    );

Map<String, dynamic> _$DogModelToJson(DogModel instance) => <String, dynamic>{
      'code': instance.code,
      'description': instance.description,
      'imageUrl': instance.imageUrl,
    };
