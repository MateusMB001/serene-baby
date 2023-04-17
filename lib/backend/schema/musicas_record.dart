import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'musicas_record.g.dart';

abstract class MusicasRecord
    implements Built<MusicasRecord, MusicasRecordBuilder> {
  static Serializer<MusicasRecord> get serializer => _$musicasRecordSerializer;

  @BuiltValueField(wireName: 'Nome_musica')
  String? get nomeMusica;

  @BuiltValueField(wireName: 'url_musica')
  String? get urlMusica;

  BuiltList<String>? get musicas;

  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference? get ffRef;
  DocumentReference get reference => ffRef!;

  static void _initializeBuilder(MusicasRecordBuilder builder) => builder
    ..nomeMusica = ''
    ..urlMusica = ''
    ..musicas = ListBuilder();

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('Musicas');

  static Stream<MusicasRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  static Future<MusicasRecord> getDocumentOnce(DocumentReference ref) => ref
      .get()
      .then((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  MusicasRecord._();
  factory MusicasRecord([void Function(MusicasRecordBuilder) updates]) =
      _$MusicasRecord;

  static MusicasRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference})!;
}

Map<String, dynamic> createMusicasRecordData({
  String? nomeMusica,
  String? urlMusica,
}) {
  final firestoreData = serializers.toFirestore(
    MusicasRecord.serializer,
    MusicasRecord(
      (m) => m
        ..nomeMusica = nomeMusica
        ..urlMusica = urlMusica
        ..musicas = null,
    ),
  );

  return firestoreData;
}
