// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'behavior_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$BehaviorState {
  BehaviorInfo? get info => throw _privateConstructorUsedError;

  /// Create a copy of BehaviorState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $BehaviorStateCopyWith<BehaviorState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BehaviorStateCopyWith<$Res> {
  factory $BehaviorStateCopyWith(
          BehaviorState value, $Res Function(BehaviorState) then) =
      _$BehaviorStateCopyWithImpl<$Res, BehaviorState>;
  @useResult
  $Res call({BehaviorInfo info});

  $BehaviorInfoCopyWith<$Res>? get info;
}

/// @nodoc
class _$BehaviorStateCopyWithImpl<$Res, $Val extends BehaviorState>
    implements $BehaviorStateCopyWith<$Res> {
  _$BehaviorStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of BehaviorState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? info = null,
  }) {
    return _then(_value.copyWith(
      info: null == info
          ? _value.info!
          : info // ignore: cast_nullable_to_non_nullable
              as BehaviorInfo,
    ) as $Val);
  }

  /// Create a copy of BehaviorState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $BehaviorInfoCopyWith<$Res>? get info {
    if (_value.info == null) {
      return null;
    }

    return $BehaviorInfoCopyWith<$Res>(_value.info!, (value) {
      return _then(_value.copyWith(info: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$BehaviorStateInitialImplCopyWith<$Res>
    implements $BehaviorStateCopyWith<$Res> {
  factory _$$BehaviorStateInitialImplCopyWith(_$BehaviorStateInitialImpl value,
          $Res Function(_$BehaviorStateInitialImpl) then) =
      __$$BehaviorStateInitialImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({BehaviorInfo? info});

  @override
  $BehaviorInfoCopyWith<$Res>? get info;
}

/// @nodoc
class __$$BehaviorStateInitialImplCopyWithImpl<$Res>
    extends _$BehaviorStateCopyWithImpl<$Res, _$BehaviorStateInitialImpl>
    implements _$$BehaviorStateInitialImplCopyWith<$Res> {
  __$$BehaviorStateInitialImplCopyWithImpl(_$BehaviorStateInitialImpl _value,
      $Res Function(_$BehaviorStateInitialImpl) _then)
      : super(_value, _then);

  /// Create a copy of BehaviorState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? info = freezed,
  }) {
    return _then(_$BehaviorStateInitialImpl(
      info: freezed == info
          ? _value.info
          : info // ignore: cast_nullable_to_non_nullable
              as BehaviorInfo?,
    ));
  }
}

/// @nodoc

class _$BehaviorStateInitialImpl
    with DiagnosticableTreeMixin
    implements BehaviorStateInitial {
  const _$BehaviorStateInitialImpl({this.info = null});

  @override
  @JsonKey()
  final BehaviorInfo? info;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'BehaviorState.initial(info: $info)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'BehaviorState.initial'))
      ..add(DiagnosticsProperty('info', info));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BehaviorStateInitialImpl &&
            (identical(other.info, info) || other.info == info));
  }

  @override
  int get hashCode => Object.hash(runtimeType, info);

  /// Create a copy of BehaviorState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$BehaviorStateInitialImplCopyWith<_$BehaviorStateInitialImpl>
      get copyWith =>
          __$$BehaviorStateInitialImplCopyWithImpl<_$BehaviorStateInitialImpl>(
              this, _$identity);
}

abstract class BehaviorStateInitial implements BehaviorState {
  const factory BehaviorStateInitial({final BehaviorInfo? info}) =
      _$BehaviorStateInitialImpl;

  @override
  BehaviorInfo? get info;

  /// Create a copy of BehaviorState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$BehaviorStateInitialImplCopyWith<_$BehaviorStateInitialImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$BehaviorStateLoadedImplCopyWith<$Res>
    implements $BehaviorStateCopyWith<$Res> {
  factory _$$BehaviorStateLoadedImplCopyWith(_$BehaviorStateLoadedImpl value,
          $Res Function(_$BehaviorStateLoadedImpl) then) =
      __$$BehaviorStateLoadedImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({BehaviorInfo info});

  @override
  $BehaviorInfoCopyWith<$Res> get info;
}

/// @nodoc
class __$$BehaviorStateLoadedImplCopyWithImpl<$Res>
    extends _$BehaviorStateCopyWithImpl<$Res, _$BehaviorStateLoadedImpl>
    implements _$$BehaviorStateLoadedImplCopyWith<$Res> {
  __$$BehaviorStateLoadedImplCopyWithImpl(_$BehaviorStateLoadedImpl _value,
      $Res Function(_$BehaviorStateLoadedImpl) _then)
      : super(_value, _then);

  /// Create a copy of BehaviorState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? info = null,
  }) {
    return _then(_$BehaviorStateLoadedImpl(
      null == info
          ? _value.info
          : info // ignore: cast_nullable_to_non_nullable
              as BehaviorInfo,
    ));
  }

  /// Create a copy of BehaviorState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $BehaviorInfoCopyWith<$Res> get info {
    return $BehaviorInfoCopyWith<$Res>(_value.info, (value) {
      return _then(_value.copyWith(info: value));
    });
  }
}

/// @nodoc

class _$BehaviorStateLoadedImpl
    with DiagnosticableTreeMixin
    implements BehaviorStateLoaded {
  const _$BehaviorStateLoadedImpl(this.info);

  @override
  final BehaviorInfo info;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'BehaviorState.loaded(info: $info)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'BehaviorState.loaded'))
      ..add(DiagnosticsProperty('info', info));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BehaviorStateLoadedImpl &&
            (identical(other.info, info) || other.info == info));
  }

  @override
  int get hashCode => Object.hash(runtimeType, info);

  /// Create a copy of BehaviorState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$BehaviorStateLoadedImplCopyWith<_$BehaviorStateLoadedImpl> get copyWith =>
      __$$BehaviorStateLoadedImplCopyWithImpl<_$BehaviorStateLoadedImpl>(
          this, _$identity);
}

abstract class BehaviorStateLoaded implements BehaviorState {
  const factory BehaviorStateLoaded(final BehaviorInfo info) =
      _$BehaviorStateLoadedImpl;

  @override
  BehaviorInfo get info;

  /// Create a copy of BehaviorState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$BehaviorStateLoadedImplCopyWith<_$BehaviorStateLoadedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$BehaviorStateEncryptionChangedImplCopyWith<$Res>
    implements $BehaviorStateCopyWith<$Res> {
  factory _$$BehaviorStateEncryptionChangedImplCopyWith(
          _$BehaviorStateEncryptionChangedImpl value,
          $Res Function(_$BehaviorStateEncryptionChangedImpl) then) =
      __$$BehaviorStateEncryptionChangedImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({BehaviorInfo info});

  @override
  $BehaviorInfoCopyWith<$Res> get info;
}

/// @nodoc
class __$$BehaviorStateEncryptionChangedImplCopyWithImpl<$Res>
    extends _$BehaviorStateCopyWithImpl<$Res,
        _$BehaviorStateEncryptionChangedImpl>
    implements _$$BehaviorStateEncryptionChangedImplCopyWith<$Res> {
  __$$BehaviorStateEncryptionChangedImplCopyWithImpl(
      _$BehaviorStateEncryptionChangedImpl _value,
      $Res Function(_$BehaviorStateEncryptionChangedImpl) _then)
      : super(_value, _then);

  /// Create a copy of BehaviorState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? info = null,
  }) {
    return _then(_$BehaviorStateEncryptionChangedImpl(
      null == info
          ? _value.info
          : info // ignore: cast_nullable_to_non_nullable
              as BehaviorInfo,
    ));
  }

  /// Create a copy of BehaviorState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $BehaviorInfoCopyWith<$Res> get info {
    return $BehaviorInfoCopyWith<$Res>(_value.info, (value) {
      return _then(_value.copyWith(info: value));
    });
  }
}

/// @nodoc

class _$BehaviorStateEncryptionChangedImpl
    with DiagnosticableTreeMixin
    implements BehaviorStateEncryptionChanged {
  const _$BehaviorStateEncryptionChangedImpl(this.info);

  @override
  final BehaviorInfo info;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'BehaviorState.encryptionChanged(info: $info)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'BehaviorState.encryptionChanged'))
      ..add(DiagnosticsProperty('info', info));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BehaviorStateEncryptionChangedImpl &&
            (identical(other.info, info) || other.info == info));
  }

  @override
  int get hashCode => Object.hash(runtimeType, info);

  /// Create a copy of BehaviorState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$BehaviorStateEncryptionChangedImplCopyWith<
          _$BehaviorStateEncryptionChangedImpl>
      get copyWith => __$$BehaviorStateEncryptionChangedImplCopyWithImpl<
          _$BehaviorStateEncryptionChangedImpl>(this, _$identity);
}

abstract class BehaviorStateEncryptionChanged implements BehaviorState {
  const factory BehaviorStateEncryptionChanged(final BehaviorInfo info) =
      _$BehaviorStateEncryptionChangedImpl;

  @override
  BehaviorInfo get info;

  /// Create a copy of BehaviorState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$BehaviorStateEncryptionChangedImplCopyWith<
          _$BehaviorStateEncryptionChangedImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$BehaviorInfo {
  EncryptionPreference? get encryption => throw _privateConstructorUsedError;

  /// Create a copy of BehaviorInfo
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $BehaviorInfoCopyWith<BehaviorInfo> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BehaviorInfoCopyWith<$Res> {
  factory $BehaviorInfoCopyWith(
          BehaviorInfo value, $Res Function(BehaviorInfo) then) =
      _$BehaviorInfoCopyWithImpl<$Res, BehaviorInfo>;
  @useResult
  $Res call({EncryptionPreference? encryption});

  $EncryptionPreferenceCopyWith<$Res>? get encryption;
}

/// @nodoc
class _$BehaviorInfoCopyWithImpl<$Res, $Val extends BehaviorInfo>
    implements $BehaviorInfoCopyWith<$Res> {
  _$BehaviorInfoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of BehaviorInfo
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? encryption = freezed,
  }) {
    return _then(_value.copyWith(
      encryption: freezed == encryption
          ? _value.encryption
          : encryption // ignore: cast_nullable_to_non_nullable
              as EncryptionPreference?,
    ) as $Val);
  }

  /// Create a copy of BehaviorInfo
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $EncryptionPreferenceCopyWith<$Res>? get encryption {
    if (_value.encryption == null) {
      return null;
    }

    return $EncryptionPreferenceCopyWith<$Res>(_value.encryption!, (value) {
      return _then(_value.copyWith(encryption: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$BehaviorInfoImplCopyWith<$Res>
    implements $BehaviorInfoCopyWith<$Res> {
  factory _$$BehaviorInfoImplCopyWith(
          _$BehaviorInfoImpl value, $Res Function(_$BehaviorInfoImpl) then) =
      __$$BehaviorInfoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({EncryptionPreference? encryption});

  @override
  $EncryptionPreferenceCopyWith<$Res>? get encryption;
}

/// @nodoc
class __$$BehaviorInfoImplCopyWithImpl<$Res>
    extends _$BehaviorInfoCopyWithImpl<$Res, _$BehaviorInfoImpl>
    implements _$$BehaviorInfoImplCopyWith<$Res> {
  __$$BehaviorInfoImplCopyWithImpl(
      _$BehaviorInfoImpl _value, $Res Function(_$BehaviorInfoImpl) _then)
      : super(_value, _then);

  /// Create a copy of BehaviorInfo
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? encryption = freezed,
  }) {
    return _then(_$BehaviorInfoImpl(
      encryption: freezed == encryption
          ? _value.encryption
          : encryption // ignore: cast_nullable_to_non_nullable
              as EncryptionPreference?,
    ));
  }
}

/// @nodoc

class _$BehaviorInfoImpl with DiagnosticableTreeMixin implements _BehaviorInfo {
  const _$BehaviorInfoImpl({required this.encryption});

  @override
  final EncryptionPreference? encryption;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'BehaviorInfo(encryption: $encryption)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'BehaviorInfo'))
      ..add(DiagnosticsProperty('encryption', encryption));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BehaviorInfoImpl &&
            (identical(other.encryption, encryption) ||
                other.encryption == encryption));
  }

  @override
  int get hashCode => Object.hash(runtimeType, encryption);

  /// Create a copy of BehaviorInfo
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$BehaviorInfoImplCopyWith<_$BehaviorInfoImpl> get copyWith =>
      __$$BehaviorInfoImplCopyWithImpl<_$BehaviorInfoImpl>(this, _$identity);
}

abstract class _BehaviorInfo implements BehaviorInfo {
  const factory _BehaviorInfo(
      {required final EncryptionPreference? encryption}) = _$BehaviorInfoImpl;

  @override
  EncryptionPreference? get encryption;

  /// Create a copy of BehaviorInfo
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$BehaviorInfoImplCopyWith<_$BehaviorInfoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
