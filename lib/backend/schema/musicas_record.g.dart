// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'musicas_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<MusicasRecord> _$musicasRecordSerializer =
    new _$MusicasRecordSerializer();

class _$MusicasRecordSerializer implements StructuredSerializer<MusicasRecord> {
  @override
  final Iterable<Type> types = const [MusicasRecord, _$MusicasRecord];
  @override
  final String wireName = 'MusicasRecord';

  @override
  Iterable<Object?> serialize(Serializers serializers, MusicasRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.nomeMusica;
    if (value != null) {
      result
        ..add('Nome_musica')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.urlMusica;
    if (value != null) {
      result
        ..add('url_musica')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.musicas;
    if (value != null) {
      result
        ..add('musicas')
        ..add(serializers.serialize(value,
            specifiedType:
                const FullType(BuiltList, const [const FullType(String)])));
    }
    value = object.ffRef;
    if (value != null) {
      result
        ..add('Document__Reference__Field')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                DocumentReference, const [const FullType.nullable(Object)])));
    }
    return result;
  }

  @override
  MusicasRecord deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new MusicasRecordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'Nome_musica':
          result.nomeMusica = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'url_musica':
          result.urlMusica = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'musicas':
          result.musicas.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(String)]))!
              as BuiltList<Object?>);
          break;
        case 'Document__Reference__Field':
          result.ffRef = serializers.deserialize(value,
              specifiedType: const FullType(DocumentReference, const [
                const FullType.nullable(Object)
              ])) as DocumentReference<Object?>?;
          break;
      }
    }

    return result.build();
  }
}

class _$MusicasRecord extends MusicasRecord {
  @override
  final String? nomeMusica;
  @override
  final String? urlMusica;
  @override
  final BuiltList<String>? musicas;
  @override
  final DocumentReference<Object?>? ffRef;

  factory _$MusicasRecord([void Function(MusicasRecordBuilder)? updates]) =>
      (new MusicasRecordBuilder()..update(updates))._build();

  _$MusicasRecord._({this.nomeMusica, this.urlMusica, this.musicas, this.ffRef})
      : super._();

  @override
  MusicasRecord rebuild(void Function(MusicasRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  MusicasRecordBuilder toBuilder() => new MusicasRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is MusicasRecord &&
        nomeMusica == other.nomeMusica &&
        urlMusica == other.urlMusica &&
        musicas == other.musicas &&
        ffRef == other.ffRef;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, nomeMusica.hashCode);
    _$hash = $jc(_$hash, urlMusica.hashCode);
    _$hash = $jc(_$hash, musicas.hashCode);
    _$hash = $jc(_$hash, ffRef.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'MusicasRecord')
          ..add('nomeMusica', nomeMusica)
          ..add('urlMusica', urlMusica)
          ..add('musicas', musicas)
          ..add('ffRef', ffRef))
        .toString();
  }
}

class MusicasRecordBuilder
    implements Builder<MusicasRecord, MusicasRecordBuilder> {
  _$MusicasRecord? _$v;

  String? _nomeMusica;
  String? get nomeMusica => _$this._nomeMusica;
  set nomeMusica(String? nomeMusica) => _$this._nomeMusica = nomeMusica;

  String? _urlMusica;
  String? get urlMusica => _$this._urlMusica;
  set urlMusica(String? urlMusica) => _$this._urlMusica = urlMusica;

  ListBuilder<String>? _musicas;
  ListBuilder<String> get musicas =>
      _$this._musicas ??= new ListBuilder<String>();
  set musicas(ListBuilder<String>? musicas) => _$this._musicas = musicas;

  DocumentReference<Object?>? _ffRef;
  DocumentReference<Object?>? get ffRef => _$this._ffRef;
  set ffRef(DocumentReference<Object?>? ffRef) => _$this._ffRef = ffRef;

  MusicasRecordBuilder() {
    MusicasRecord._initializeBuilder(this);
  }

  MusicasRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _nomeMusica = $v.nomeMusica;
      _urlMusica = $v.urlMusica;
      _musicas = $v.musicas?.toBuilder();
      _ffRef = $v.ffRef;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(MusicasRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$MusicasRecord;
  }

  @override
  void update(void Function(MusicasRecordBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  MusicasRecord build() => _build();

  _$MusicasRecord _build() {
    _$MusicasRecord _$result;
    try {
      _$result = _$v ??
          new _$MusicasRecord._(
              nomeMusica: nomeMusica,
              urlMusica: urlMusica,
              musicas: _musicas?.build(),
              ffRef: ffRef);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'musicas';
        _musicas?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'MusicasRecord', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
