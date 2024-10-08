// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'about_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$AboutState {}

/// @nodoc
abstract class $AboutStateCopyWith<$Res> {
  factory $AboutStateCopyWith(
          AboutState value, $Res Function(AboutState) then) =
      _$AboutStateCopyWithImpl<$Res, AboutState>;
}

/// @nodoc
class _$AboutStateCopyWithImpl<$Res, $Val extends AboutState>
    implements $AboutStateCopyWith<$Res> {
  _$AboutStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AboutState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$AboutStateInitialImplCopyWith<$Res> {
  factory _$$AboutStateInitialImplCopyWith(_$AboutStateInitialImpl value,
          $Res Function(_$AboutStateInitialImpl) then) =
      __$$AboutStateInitialImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$AboutStateInitialImplCopyWithImpl<$Res>
    extends _$AboutStateCopyWithImpl<$Res, _$AboutStateInitialImpl>
    implements _$$AboutStateInitialImplCopyWith<$Res> {
  __$$AboutStateInitialImplCopyWithImpl(_$AboutStateInitialImpl _value,
      $Res Function(_$AboutStateInitialImpl) _then)
      : super(_value, _then);

  /// Create a copy of AboutState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$AboutStateInitialImpl
    with DiagnosticableTreeMixin
    implements AboutStateInitial {
  const _$AboutStateInitialImpl();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'AboutState.initial()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(DiagnosticsProperty('type', 'AboutState.initial'));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$AboutStateInitialImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;
}

abstract class AboutStateInitial implements AboutState {
  const factory AboutStateInitial() = _$AboutStateInitialImpl;
}

/// @nodoc
abstract class _$$AboutStateLoadingImplCopyWith<$Res> {
  factory _$$AboutStateLoadingImplCopyWith(_$AboutStateLoadingImpl value,
          $Res Function(_$AboutStateLoadingImpl) then) =
      __$$AboutStateLoadingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$AboutStateLoadingImplCopyWithImpl<$Res>
    extends _$AboutStateCopyWithImpl<$Res, _$AboutStateLoadingImpl>
    implements _$$AboutStateLoadingImplCopyWith<$Res> {
  __$$AboutStateLoadingImplCopyWithImpl(_$AboutStateLoadingImpl _value,
      $Res Function(_$AboutStateLoadingImpl) _then)
      : super(_value, _then);

  /// Create a copy of AboutState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$AboutStateLoadingImpl
    with DiagnosticableTreeMixin
    implements AboutStateLoading {
  const _$AboutStateLoadingImpl();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'AboutState.loading()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(DiagnosticsProperty('type', 'AboutState.loading'));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$AboutStateLoadingImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;
}

abstract class AboutStateLoading implements AboutState {
  const factory AboutStateLoading() = _$AboutStateLoadingImpl;
}

/// @nodoc
abstract class _$$AboutStateLoadedImplCopyWith<$Res> {
  factory _$$AboutStateLoadedImplCopyWith(_$AboutStateLoadedImpl value,
          $Res Function(_$AboutStateLoadedImpl) then) =
      __$$AboutStateLoadedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String appName, String appVersion});
}

/// @nodoc
class __$$AboutStateLoadedImplCopyWithImpl<$Res>
    extends _$AboutStateCopyWithImpl<$Res, _$AboutStateLoadedImpl>
    implements _$$AboutStateLoadedImplCopyWith<$Res> {
  __$$AboutStateLoadedImplCopyWithImpl(_$AboutStateLoadedImpl _value,
      $Res Function(_$AboutStateLoadedImpl) _then)
      : super(_value, _then);

  /// Create a copy of AboutState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? appName = null,
    Object? appVersion = null,
  }) {
    return _then(_$AboutStateLoadedImpl(
      appName: null == appName
          ? _value.appName
          : appName // ignore: cast_nullable_to_non_nullable
              as String,
      appVersion: null == appVersion
          ? _value.appVersion
          : appVersion // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$AboutStateLoadedImpl
    with DiagnosticableTreeMixin
    implements AboutStateLoaded {
  const _$AboutStateLoadedImpl(
      {required this.appName, required this.appVersion});

  @override
  final String appName;
  @override
  final String appVersion;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'AboutState.loaded(appName: $appName, appVersion: $appVersion)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'AboutState.loaded'))
      ..add(DiagnosticsProperty('appName', appName))
      ..add(DiagnosticsProperty('appVersion', appVersion));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AboutStateLoadedImpl &&
            (identical(other.appName, appName) || other.appName == appName) &&
            (identical(other.appVersion, appVersion) ||
                other.appVersion == appVersion));
  }

  @override
  int get hashCode => Object.hash(runtimeType, appName, appVersion);

  /// Create a copy of AboutState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AboutStateLoadedImplCopyWith<_$AboutStateLoadedImpl> get copyWith =>
      __$$AboutStateLoadedImplCopyWithImpl<_$AboutStateLoadedImpl>(
          this, _$identity);
}

abstract class AboutStateLoaded implements AboutState {
  const factory AboutStateLoaded(
      {required final String appName,
      required final String appVersion}) = _$AboutStateLoadedImpl;

  String get appName;
  String get appVersion;

  /// Create a copy of AboutState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AboutStateLoadedImplCopyWith<_$AboutStateLoadedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
