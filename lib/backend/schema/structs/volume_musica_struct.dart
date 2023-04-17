import 'dart:async';

import '../index.dart';
import '../serializers.dart';
import 'package:built_value/built_value.dart';

part 'volume_musica_struct.g.dart';

abstract class VolumeMusicaStruct
    implements Built<VolumeMusicaStruct, VolumeMusicaStructBuilder> {
  static Serializer<VolumeMusicaStruct> get serializer =>
      _$volumeMusicaStructSerializer;

  int? get volume;

  /// Utility class for Firestore updates
  FirestoreUtilData get firestoreUtilData;

  static void _initializeBuilder(VolumeMusicaStructBuilder builder) => builder
    ..volume = 0
    ..firestoreUtilData = FirestoreUtilData();

  VolumeMusicaStruct._();
  factory VolumeMusicaStruct(
          [void Function(VolumeMusicaStructBuilder) updates]) =
      _$VolumeMusicaStruct;
}

VolumeMusicaStruct createVolumeMusicaStruct({
  int? volume,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    VolumeMusicaStruct(
      (v) => v
        ..volume = volume
        ..firestoreUtilData = FirestoreUtilData(
          clearUnsetFields: clearUnsetFields,
          create: create,
          delete: delete,
          fieldValues: fieldValues,
        ),
    );

VolumeMusicaStruct? updateVolumeMusicaStruct(
  VolumeMusicaStruct? volumeMusica, {
  bool clearUnsetFields = true,
}) =>
    volumeMusica != null
        ? (volumeMusica.toBuilder()
              ..firestoreUtilData =
                  FirestoreUtilData(clearUnsetFields: clearUnsetFields))
            .build()
        : null;

void addVolumeMusicaStructData(
  Map<String, dynamic> firestoreData,
  VolumeMusicaStruct? volumeMusica,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (volumeMusica == null) {
    return;
  }
  if (volumeMusica.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  if (!forFieldValue && volumeMusica.firestoreUtilData.clearUnsetFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final volumeMusicaData =
      getVolumeMusicaFirestoreData(volumeMusica, forFieldValue);
  final nestedData =
      volumeMusicaData.map((k, v) => MapEntry('$fieldName.$k', v));

  final create = volumeMusica.firestoreUtilData.create;
  firestoreData.addAll(create ? mergeNestedFields(nestedData) : nestedData);

  return;
}

Map<String, dynamic> getVolumeMusicaFirestoreData(
  VolumeMusicaStruct? volumeMusica, [
  bool forFieldValue = false,
]) {
  if (volumeMusica == null) {
    return {};
  }
  final firestoreData =
      serializers.toFirestore(VolumeMusicaStruct.serializer, volumeMusica);

  // Add any Firestore field values
  volumeMusica.firestoreUtilData.fieldValues
      .forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getVolumeMusicaListFirestoreData(
  List<VolumeMusicaStruct>? volumeMusicas,
) =>
    volumeMusicas?.map((v) => getVolumeMusicaFirestoreData(v, true)).toList() ??
    [];
