// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'volume_musica_struct.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<VolumeMusicaStruct> _$volumeMusicaStructSerializer =
    new _$VolumeMusicaStructSerializer();

class _$VolumeMusicaStructSerializer
    implements StructuredSerializer<VolumeMusicaStruct> {
  @override
  final Iterable<Type> types = const [VolumeMusicaStruct, _$VolumeMusicaStruct];
  @override
  final String wireName = 'VolumeMusicaStruct';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, VolumeMusicaStruct object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'firestoreUtilData',
      serializers.serialize(object.firestoreUtilData,
          specifiedType: const FullType(FirestoreUtilData)),
    ];
    Object? value;
    value = object.volume;
    if (value != null) {
      result
        ..add('volume')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    return result;
  }

  @override
  VolumeMusicaStruct deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new VolumeMusicaStructBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'volume':
          result.volume = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'firestoreUtilData':
          result.firestoreUtilData = serializers.deserialize(value,
                  specifiedType: const FullType(FirestoreUtilData))!
              as FirestoreUtilData;
          break;
      }
    }

    return result.build();
  }
}

class _$VolumeMusicaStruct extends VolumeMusicaStruct {
  @override
  final int? volume;
  @override
  final FirestoreUtilData firestoreUtilData;

  factory _$VolumeMusicaStruct(
          [void Function(VolumeMusicaStructBuilder)? updates]) =>
      (new VolumeMusicaStructBuilder()..update(updates))._build();

  _$VolumeMusicaStruct._({this.volume, required this.firestoreUtilData})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        firestoreUtilData, r'VolumeMusicaStruct', 'firestoreUtilData');
  }

  @override
  VolumeMusicaStruct rebuild(
          void Function(VolumeMusicaStructBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  VolumeMusicaStructBuilder toBuilder() =>
      new VolumeMusicaStructBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is VolumeMusicaStruct &&
        volume == other.volume &&
        firestoreUtilData == other.firestoreUtilData;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, volume.hashCode);
    _$hash = $jc(_$hash, firestoreUtilData.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'VolumeMusicaStruct')
          ..add('volume', volume)
          ..add('firestoreUtilData', firestoreUtilData))
        .toString();
  }
}

class VolumeMusicaStructBuilder
    implements Builder<VolumeMusicaStruct, VolumeMusicaStructBuilder> {
  _$VolumeMusicaStruct? _$v;

  int? _volume;
  int? get volume => _$this._volume;
  set volume(int? volume) => _$this._volume = volume;

  FirestoreUtilData? _firestoreUtilData;
  FirestoreUtilData? get firestoreUtilData => _$this._firestoreUtilData;
  set firestoreUtilData(FirestoreUtilData? firestoreUtilData) =>
      _$this._firestoreUtilData = firestoreUtilData;

  VolumeMusicaStructBuilder() {
    VolumeMusicaStruct._initializeBuilder(this);
  }

  VolumeMusicaStructBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _volume = $v.volume;
      _firestoreUtilData = $v.firestoreUtilData;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(VolumeMusicaStruct other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$VolumeMusicaStruct;
  }

  @override
  void update(void Function(VolumeMusicaStructBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  VolumeMusicaStruct build() => _build();

  _$VolumeMusicaStruct _build() {
    final _$result = _$v ??
        new _$VolumeMusicaStruct._(
            volume: volume,
            firestoreUtilData: BuiltValueNullFieldError.checkNotNull(
                firestoreUtilData, r'VolumeMusicaStruct', 'firestoreUtilData'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
