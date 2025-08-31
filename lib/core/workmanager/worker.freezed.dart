// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'worker.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$WorkResult implements DiagnosticableTreeMixin {




@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'WorkResult'))
    ;
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is WorkResult);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'WorkResult()';
}


}

/// @nodoc
class $WorkResultCopyWith<$Res>  {
$WorkResultCopyWith(WorkResult _, $Res Function(WorkResult) __);
}



/// @nodoc


class WorkResultSuccess with DiagnosticableTreeMixin implements WorkResult {
  const WorkResultSuccess();
  





@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'WorkResult.success'))
    ;
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is WorkResultSuccess);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'WorkResult.success()';
}


}




/// @nodoc


class WorkResultFailure with DiagnosticableTreeMixin implements WorkResult {
  const WorkResultFailure();
  





@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'WorkResult.failure'))
    ;
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is WorkResultFailure);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'WorkResult.failure()';
}


}




/// @nodoc
mixin _$WorkParams implements DiagnosticableTreeMixin {

 WorkConstraints? get constraints; WorkData? get inputData; ExistingWorkPolicy get existingWorkPolicy;
/// Create a copy of WorkParams
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$WorkParamsCopyWith<WorkParams> get copyWith => _$WorkParamsCopyWithImpl<WorkParams>(this as WorkParams, _$identity);


@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'WorkParams'))
    ..add(DiagnosticsProperty('constraints', constraints))..add(DiagnosticsProperty('inputData', inputData))..add(DiagnosticsProperty('existingWorkPolicy', existingWorkPolicy));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is WorkParams&&(identical(other.constraints, constraints) || other.constraints == constraints)&&(identical(other.inputData, inputData) || other.inputData == inputData)&&(identical(other.existingWorkPolicy, existingWorkPolicy) || other.existingWorkPolicy == existingWorkPolicy));
}


@override
int get hashCode => Object.hash(runtimeType,constraints,inputData,existingWorkPolicy);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'WorkParams(constraints: $constraints, inputData: $inputData, existingWorkPolicy: $existingWorkPolicy)';
}


}

/// @nodoc
abstract mixin class $WorkParamsCopyWith<$Res>  {
  factory $WorkParamsCopyWith(WorkParams value, $Res Function(WorkParams) _then) = _$WorkParamsCopyWithImpl;
@useResult
$Res call({
 WorkConstraints? constraints, WorkData? inputData, ExistingWorkPolicy existingWorkPolicy
});


$WorkConstraintsCopyWith<$Res>? get constraints;

}
/// @nodoc
class _$WorkParamsCopyWithImpl<$Res>
    implements $WorkParamsCopyWith<$Res> {
  _$WorkParamsCopyWithImpl(this._self, this._then);

  final WorkParams _self;
  final $Res Function(WorkParams) _then;

/// Create a copy of WorkParams
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? constraints = freezed,Object? inputData = freezed,Object? existingWorkPolicy = null,}) {
  return _then(_self.copyWith(
constraints: freezed == constraints ? _self.constraints : constraints // ignore: cast_nullable_to_non_nullable
as WorkConstraints?,inputData: freezed == inputData ? _self.inputData : inputData // ignore: cast_nullable_to_non_nullable
as WorkData?,existingWorkPolicy: null == existingWorkPolicy ? _self.existingWorkPolicy : existingWorkPolicy // ignore: cast_nullable_to_non_nullable
as ExistingWorkPolicy,
  ));
}
/// Create a copy of WorkParams
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$WorkConstraintsCopyWith<$Res>? get constraints {
    if (_self.constraints == null) {
    return null;
  }

  return $WorkConstraintsCopyWith<$Res>(_self.constraints!, (value) {
    return _then(_self.copyWith(constraints: value));
  });
}
}



/// @nodoc


class _WorkParams with DiagnosticableTreeMixin implements WorkParams {
  const _WorkParams({this.constraints, this.inputData, this.existingWorkPolicy = ExistingWorkPolicy.replace});
  

@override final  WorkConstraints? constraints;
@override final  WorkData? inputData;
@override@JsonKey() final  ExistingWorkPolicy existingWorkPolicy;

/// Create a copy of WorkParams
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$WorkParamsCopyWith<_WorkParams> get copyWith => __$WorkParamsCopyWithImpl<_WorkParams>(this, _$identity);


@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'WorkParams'))
    ..add(DiagnosticsProperty('constraints', constraints))..add(DiagnosticsProperty('inputData', inputData))..add(DiagnosticsProperty('existingWorkPolicy', existingWorkPolicy));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _WorkParams&&(identical(other.constraints, constraints) || other.constraints == constraints)&&(identical(other.inputData, inputData) || other.inputData == inputData)&&(identical(other.existingWorkPolicy, existingWorkPolicy) || other.existingWorkPolicy == existingWorkPolicy));
}


@override
int get hashCode => Object.hash(runtimeType,constraints,inputData,existingWorkPolicy);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'WorkParams(constraints: $constraints, inputData: $inputData, existingWorkPolicy: $existingWorkPolicy)';
}


}

/// @nodoc
abstract mixin class _$WorkParamsCopyWith<$Res> implements $WorkParamsCopyWith<$Res> {
  factory _$WorkParamsCopyWith(_WorkParams value, $Res Function(_WorkParams) _then) = __$WorkParamsCopyWithImpl;
@override @useResult
$Res call({
 WorkConstraints? constraints, WorkData? inputData, ExistingWorkPolicy existingWorkPolicy
});


@override $WorkConstraintsCopyWith<$Res>? get constraints;

}
/// @nodoc
class __$WorkParamsCopyWithImpl<$Res>
    implements _$WorkParamsCopyWith<$Res> {
  __$WorkParamsCopyWithImpl(this._self, this._then);

  final _WorkParams _self;
  final $Res Function(_WorkParams) _then;

/// Create a copy of WorkParams
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? constraints = freezed,Object? inputData = freezed,Object? existingWorkPolicy = null,}) {
  return _then(_WorkParams(
constraints: freezed == constraints ? _self.constraints : constraints // ignore: cast_nullable_to_non_nullable
as WorkConstraints?,inputData: freezed == inputData ? _self.inputData : inputData // ignore: cast_nullable_to_non_nullable
as WorkData?,existingWorkPolicy: null == existingWorkPolicy ? _self.existingWorkPolicy : existingWorkPolicy // ignore: cast_nullable_to_non_nullable
as ExistingWorkPolicy,
  ));
}

/// Create a copy of WorkParams
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$WorkConstraintsCopyWith<$Res>? get constraints {
    if (_self.constraints == null) {
    return null;
  }

  return $WorkConstraintsCopyWith<$Res>(_self.constraints!, (value) {
    return _then(_self.copyWith(constraints: value));
  });
}
}

/// @nodoc
mixin _$WorkConstraints implements DiagnosticableTreeMixin {

 NetworkType? get networkType;
/// Create a copy of WorkConstraints
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$WorkConstraintsCopyWith<WorkConstraints> get copyWith => _$WorkConstraintsCopyWithImpl<WorkConstraints>(this as WorkConstraints, _$identity);


@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'WorkConstraints'))
    ..add(DiagnosticsProperty('networkType', networkType));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is WorkConstraints&&(identical(other.networkType, networkType) || other.networkType == networkType));
}


@override
int get hashCode => Object.hash(runtimeType,networkType);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'WorkConstraints(networkType: $networkType)';
}


}

/// @nodoc
abstract mixin class $WorkConstraintsCopyWith<$Res>  {
  factory $WorkConstraintsCopyWith(WorkConstraints value, $Res Function(WorkConstraints) _then) = _$WorkConstraintsCopyWithImpl;
@useResult
$Res call({
 NetworkType? networkType
});




}
/// @nodoc
class _$WorkConstraintsCopyWithImpl<$Res>
    implements $WorkConstraintsCopyWith<$Res> {
  _$WorkConstraintsCopyWithImpl(this._self, this._then);

  final WorkConstraints _self;
  final $Res Function(WorkConstraints) _then;

/// Create a copy of WorkConstraints
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? networkType = freezed,}) {
  return _then(_self.copyWith(
networkType: freezed == networkType ? _self.networkType : networkType // ignore: cast_nullable_to_non_nullable
as NetworkType?,
  ));
}

}



/// @nodoc


class _WorkConstraints with DiagnosticableTreeMixin implements WorkConstraints {
  const _WorkConstraints({this.networkType});
  

@override final  NetworkType? networkType;

/// Create a copy of WorkConstraints
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$WorkConstraintsCopyWith<_WorkConstraints> get copyWith => __$WorkConstraintsCopyWithImpl<_WorkConstraints>(this, _$identity);


@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'WorkConstraints'))
    ..add(DiagnosticsProperty('networkType', networkType));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _WorkConstraints&&(identical(other.networkType, networkType) || other.networkType == networkType));
}


@override
int get hashCode => Object.hash(runtimeType,networkType);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'WorkConstraints(networkType: $networkType)';
}


}

/// @nodoc
abstract mixin class _$WorkConstraintsCopyWith<$Res> implements $WorkConstraintsCopyWith<$Res> {
  factory _$WorkConstraintsCopyWith(_WorkConstraints value, $Res Function(_WorkConstraints) _then) = __$WorkConstraintsCopyWithImpl;
@override @useResult
$Res call({
 NetworkType? networkType
});




}
/// @nodoc
class __$WorkConstraintsCopyWithImpl<$Res>
    implements _$WorkConstraintsCopyWith<$Res> {
  __$WorkConstraintsCopyWithImpl(this._self, this._then);

  final _WorkConstraints _self;
  final $Res Function(_WorkConstraints) _then;

/// Create a copy of WorkConstraints
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? networkType = freezed,}) {
  return _then(_WorkConstraints(
networkType: freezed == networkType ? _self.networkType : networkType // ignore: cast_nullable_to_non_nullable
as NetworkType?,
  ));
}


}

// dart format on
