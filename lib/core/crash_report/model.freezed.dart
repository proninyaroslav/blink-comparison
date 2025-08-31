// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$CrashInfo implements DiagnosticableTreeMixin {

@ErrorConverter() Object get error;@StackTraceConverter() StackTrace? get stackTrace; String? get message;
/// Create a copy of CrashInfo
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CrashInfoCopyWith<CrashInfo> get copyWith => _$CrashInfoCopyWithImpl<CrashInfo>(this as CrashInfo, _$identity);

  /// Serializes this CrashInfo to a JSON map.
  Map<String, dynamic> toJson();

@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'CrashInfo'))
    ..add(DiagnosticsProperty('error', error))..add(DiagnosticsProperty('stackTrace', stackTrace))..add(DiagnosticsProperty('message', message));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CrashInfo&&const DeepCollectionEquality().equals(other.error, error)&&(identical(other.stackTrace, stackTrace) || other.stackTrace == stackTrace)&&(identical(other.message, message) || other.message == message));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(error),stackTrace,message);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'CrashInfo(error: $error, stackTrace: $stackTrace, message: $message)';
}


}

/// @nodoc
abstract mixin class $CrashInfoCopyWith<$Res>  {
  factory $CrashInfoCopyWith(CrashInfo value, $Res Function(CrashInfo) _then) = _$CrashInfoCopyWithImpl;
@useResult
$Res call({
@ErrorConverter() Object error,@StackTraceConverter() StackTrace? stackTrace, String? message
});




}
/// @nodoc
class _$CrashInfoCopyWithImpl<$Res>
    implements $CrashInfoCopyWith<$Res> {
  _$CrashInfoCopyWithImpl(this._self, this._then);

  final CrashInfo _self;
  final $Res Function(CrashInfo) _then;

/// Create a copy of CrashInfo
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? error = null,Object? stackTrace = freezed,Object? message = freezed,}) {
  return _then(_self.copyWith(
error: null == error ? _self.error : error ,stackTrace: freezed == stackTrace ? _self.stackTrace : stackTrace // ignore: cast_nullable_to_non_nullable
as StackTrace?,message: freezed == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}



/// @nodoc
@JsonSerializable()

class _CrashInfo with DiagnosticableTreeMixin implements CrashInfo {
  const _CrashInfo({@ErrorConverter() required this.error, @StackTraceConverter() this.stackTrace, this.message});
  factory _CrashInfo.fromJson(Map<String, dynamic> json) => _$CrashInfoFromJson(json);

@override@ErrorConverter() final  Object error;
@override@StackTraceConverter() final  StackTrace? stackTrace;
@override final  String? message;

/// Create a copy of CrashInfo
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CrashInfoCopyWith<_CrashInfo> get copyWith => __$CrashInfoCopyWithImpl<_CrashInfo>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$CrashInfoToJson(this, );
}
@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'CrashInfo'))
    ..add(DiagnosticsProperty('error', error))..add(DiagnosticsProperty('stackTrace', stackTrace))..add(DiagnosticsProperty('message', message));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _CrashInfo&&const DeepCollectionEquality().equals(other.error, error)&&(identical(other.stackTrace, stackTrace) || other.stackTrace == stackTrace)&&(identical(other.message, message) || other.message == message));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(error),stackTrace,message);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'CrashInfo(error: $error, stackTrace: $stackTrace, message: $message)';
}


}

/// @nodoc
abstract mixin class _$CrashInfoCopyWith<$Res> implements $CrashInfoCopyWith<$Res> {
  factory _$CrashInfoCopyWith(_CrashInfo value, $Res Function(_CrashInfo) _then) = __$CrashInfoCopyWithImpl;
@override @useResult
$Res call({
@ErrorConverter() Object error,@StackTraceConverter() StackTrace? stackTrace, String? message
});




}
/// @nodoc
class __$CrashInfoCopyWithImpl<$Res>
    implements _$CrashInfoCopyWith<$Res> {
  __$CrashInfoCopyWithImpl(this._self, this._then);

  final _CrashInfo _self;
  final $Res Function(_CrashInfo) _then;

/// Create a copy of CrashInfo
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? error = null,Object? stackTrace = freezed,Object? message = freezed,}) {
  return _then(_CrashInfo(
error: null == error ? _self.error : error ,stackTrace: freezed == stackTrace ? _self.stackTrace : stackTrace // ignore: cast_nullable_to_non_nullable
as StackTrace?,message: freezed == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

/// @nodoc
mixin _$CrashReport implements DiagnosticableTreeMixin {

 String get email; String get subject; CrashReportData get data;
/// Create a copy of CrashReport
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CrashReportCopyWith<CrashReport> get copyWith => _$CrashReportCopyWithImpl<CrashReport>(this as CrashReport, _$identity);


@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'CrashReport'))
    ..add(DiagnosticsProperty('email', email))..add(DiagnosticsProperty('subject', subject))..add(DiagnosticsProperty('data', data));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CrashReport&&(identical(other.email, email) || other.email == email)&&(identical(other.subject, subject) || other.subject == subject)&&(identical(other.data, data) || other.data == data));
}


@override
int get hashCode => Object.hash(runtimeType,email,subject,data);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'CrashReport(email: $email, subject: $subject, data: $data)';
}


}

/// @nodoc
abstract mixin class $CrashReportCopyWith<$Res>  {
  factory $CrashReportCopyWith(CrashReport value, $Res Function(CrashReport) _then) = _$CrashReportCopyWithImpl;
@useResult
$Res call({
 String email, String subject, CrashReportData data
});


$CrashReportDataCopyWith<$Res> get data;

}
/// @nodoc
class _$CrashReportCopyWithImpl<$Res>
    implements $CrashReportCopyWith<$Res> {
  _$CrashReportCopyWithImpl(this._self, this._then);

  final CrashReport _self;
  final $Res Function(CrashReport) _then;

/// Create a copy of CrashReport
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? email = null,Object? subject = null,Object? data = null,}) {
  return _then(_self.copyWith(
email: null == email ? _self.email : email // ignore: cast_nullable_to_non_nullable
as String,subject: null == subject ? _self.subject : subject // ignore: cast_nullable_to_non_nullable
as String,data: null == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as CrashReportData,
  ));
}
/// Create a copy of CrashReport
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$CrashReportDataCopyWith<$Res> get data {
  
  return $CrashReportDataCopyWith<$Res>(_self.data, (value) {
    return _then(_self.copyWith(data: value));
  });
}
}



/// @nodoc


class _CrashReport with DiagnosticableTreeMixin implements CrashReport {
  const _CrashReport({required this.email, required this.subject, required this.data});
  

@override final  String email;
@override final  String subject;
@override final  CrashReportData data;

/// Create a copy of CrashReport
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CrashReportCopyWith<_CrashReport> get copyWith => __$CrashReportCopyWithImpl<_CrashReport>(this, _$identity);


@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'CrashReport'))
    ..add(DiagnosticsProperty('email', email))..add(DiagnosticsProperty('subject', subject))..add(DiagnosticsProperty('data', data));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _CrashReport&&(identical(other.email, email) || other.email == email)&&(identical(other.subject, subject) || other.subject == subject)&&(identical(other.data, data) || other.data == data));
}


@override
int get hashCode => Object.hash(runtimeType,email,subject,data);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'CrashReport(email: $email, subject: $subject, data: $data)';
}


}

/// @nodoc
abstract mixin class _$CrashReportCopyWith<$Res> implements $CrashReportCopyWith<$Res> {
  factory _$CrashReportCopyWith(_CrashReport value, $Res Function(_CrashReport) _then) = __$CrashReportCopyWithImpl;
@override @useResult
$Res call({
 String email, String subject, CrashReportData data
});


@override $CrashReportDataCopyWith<$Res> get data;

}
/// @nodoc
class __$CrashReportCopyWithImpl<$Res>
    implements _$CrashReportCopyWith<$Res> {
  __$CrashReportCopyWithImpl(this._self, this._then);

  final _CrashReport _self;
  final $Res Function(_CrashReport) _then;

/// Create a copy of CrashReport
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? email = null,Object? subject = null,Object? data = null,}) {
  return _then(_CrashReport(
email: null == email ? _self.email : email // ignore: cast_nullable_to_non_nullable
as String,subject: null == subject ? _self.subject : subject // ignore: cast_nullable_to_non_nullable
as String,data: null == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as CrashReportData,
  ));
}

/// Create a copy of CrashReport
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$CrashReportDataCopyWith<$Res> get data {
  
  return $CrashReportDataCopyWith<$Res>(_self.data, (value) {
    return _then(_self.copyWith(data: value));
  });
}
}


/// @nodoc
mixin _$CrashReportData implements DiagnosticableTreeMixin {

@CrashReportIdConverter() CrashReportId get reportId; String get packageName; String get appName; String get version; String get buildNumber; String get error; String? get comment; String? get stackTrace; ReportableInfo get deviceInfo;
/// Create a copy of CrashReportData
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CrashReportDataCopyWith<CrashReportData> get copyWith => _$CrashReportDataCopyWithImpl<CrashReportData>(this as CrashReportData, _$identity);

  /// Serializes this CrashReportData to a JSON map.
  Map<String, dynamic> toJson();

@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'CrashReportData'))
    ..add(DiagnosticsProperty('reportId', reportId))..add(DiagnosticsProperty('packageName', packageName))..add(DiagnosticsProperty('appName', appName))..add(DiagnosticsProperty('version', version))..add(DiagnosticsProperty('buildNumber', buildNumber))..add(DiagnosticsProperty('error', error))..add(DiagnosticsProperty('comment', comment))..add(DiagnosticsProperty('stackTrace', stackTrace))..add(DiagnosticsProperty('deviceInfo', deviceInfo));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CrashReportData&&(identical(other.reportId, reportId) || other.reportId == reportId)&&(identical(other.packageName, packageName) || other.packageName == packageName)&&(identical(other.appName, appName) || other.appName == appName)&&(identical(other.version, version) || other.version == version)&&(identical(other.buildNumber, buildNumber) || other.buildNumber == buildNumber)&&(identical(other.error, error) || other.error == error)&&(identical(other.comment, comment) || other.comment == comment)&&(identical(other.stackTrace, stackTrace) || other.stackTrace == stackTrace)&&(identical(other.deviceInfo, deviceInfo) || other.deviceInfo == deviceInfo));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,reportId,packageName,appName,version,buildNumber,error,comment,stackTrace,deviceInfo);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'CrashReportData(reportId: $reportId, packageName: $packageName, appName: $appName, version: $version, buildNumber: $buildNumber, error: $error, comment: $comment, stackTrace: $stackTrace, deviceInfo: $deviceInfo)';
}


}

/// @nodoc
abstract mixin class $CrashReportDataCopyWith<$Res>  {
  factory $CrashReportDataCopyWith(CrashReportData value, $Res Function(CrashReportData) _then) = _$CrashReportDataCopyWithImpl;
@useResult
$Res call({
@CrashReportIdConverter() CrashReportId reportId, String packageName, String appName, String version, String buildNumber, String error, String? comment, String? stackTrace, ReportableInfo deviceInfo
});


$ReportableInfoCopyWith<$Res> get deviceInfo;

}
/// @nodoc
class _$CrashReportDataCopyWithImpl<$Res>
    implements $CrashReportDataCopyWith<$Res> {
  _$CrashReportDataCopyWithImpl(this._self, this._then);

  final CrashReportData _self;
  final $Res Function(CrashReportData) _then;

/// Create a copy of CrashReportData
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? reportId = null,Object? packageName = null,Object? appName = null,Object? version = null,Object? buildNumber = null,Object? error = null,Object? comment = freezed,Object? stackTrace = freezed,Object? deviceInfo = null,}) {
  return _then(_self.copyWith(
reportId: null == reportId ? _self.reportId : reportId // ignore: cast_nullable_to_non_nullable
as CrashReportId,packageName: null == packageName ? _self.packageName : packageName // ignore: cast_nullable_to_non_nullable
as String,appName: null == appName ? _self.appName : appName // ignore: cast_nullable_to_non_nullable
as String,version: null == version ? _self.version : version // ignore: cast_nullable_to_non_nullable
as String,buildNumber: null == buildNumber ? _self.buildNumber : buildNumber // ignore: cast_nullable_to_non_nullable
as String,error: null == error ? _self.error : error // ignore: cast_nullable_to_non_nullable
as String,comment: freezed == comment ? _self.comment : comment // ignore: cast_nullable_to_non_nullable
as String?,stackTrace: freezed == stackTrace ? _self.stackTrace : stackTrace // ignore: cast_nullable_to_non_nullable
as String?,deviceInfo: null == deviceInfo ? _self.deviceInfo : deviceInfo // ignore: cast_nullable_to_non_nullable
as ReportableInfo,
  ));
}
/// Create a copy of CrashReportData
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ReportableInfoCopyWith<$Res> get deviceInfo {
  
  return $ReportableInfoCopyWith<$Res>(_self.deviceInfo, (value) {
    return _then(_self.copyWith(deviceInfo: value));
  });
}
}



/// @nodoc
@JsonSerializable()

class _CrashReportData with DiagnosticableTreeMixin implements CrashReportData {
  const _CrashReportData({@CrashReportIdConverter() required this.reportId, required this.packageName, required this.appName, required this.version, required this.buildNumber, required this.error, this.comment, this.stackTrace, required this.deviceInfo});
  factory _CrashReportData.fromJson(Map<String, dynamic> json) => _$CrashReportDataFromJson(json);

@override@CrashReportIdConverter() final  CrashReportId reportId;
@override final  String packageName;
@override final  String appName;
@override final  String version;
@override final  String buildNumber;
@override final  String error;
@override final  String? comment;
@override final  String? stackTrace;
@override final  ReportableInfo deviceInfo;

/// Create a copy of CrashReportData
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CrashReportDataCopyWith<_CrashReportData> get copyWith => __$CrashReportDataCopyWithImpl<_CrashReportData>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$CrashReportDataToJson(this, );
}
@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'CrashReportData'))
    ..add(DiagnosticsProperty('reportId', reportId))..add(DiagnosticsProperty('packageName', packageName))..add(DiagnosticsProperty('appName', appName))..add(DiagnosticsProperty('version', version))..add(DiagnosticsProperty('buildNumber', buildNumber))..add(DiagnosticsProperty('error', error))..add(DiagnosticsProperty('comment', comment))..add(DiagnosticsProperty('stackTrace', stackTrace))..add(DiagnosticsProperty('deviceInfo', deviceInfo));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _CrashReportData&&(identical(other.reportId, reportId) || other.reportId == reportId)&&(identical(other.packageName, packageName) || other.packageName == packageName)&&(identical(other.appName, appName) || other.appName == appName)&&(identical(other.version, version) || other.version == version)&&(identical(other.buildNumber, buildNumber) || other.buildNumber == buildNumber)&&(identical(other.error, error) || other.error == error)&&(identical(other.comment, comment) || other.comment == comment)&&(identical(other.stackTrace, stackTrace) || other.stackTrace == stackTrace)&&(identical(other.deviceInfo, deviceInfo) || other.deviceInfo == deviceInfo));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,reportId,packageName,appName,version,buildNumber,error,comment,stackTrace,deviceInfo);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'CrashReportData(reportId: $reportId, packageName: $packageName, appName: $appName, version: $version, buildNumber: $buildNumber, error: $error, comment: $comment, stackTrace: $stackTrace, deviceInfo: $deviceInfo)';
}


}

/// @nodoc
abstract mixin class _$CrashReportDataCopyWith<$Res> implements $CrashReportDataCopyWith<$Res> {
  factory _$CrashReportDataCopyWith(_CrashReportData value, $Res Function(_CrashReportData) _then) = __$CrashReportDataCopyWithImpl;
@override @useResult
$Res call({
@CrashReportIdConverter() CrashReportId reportId, String packageName, String appName, String version, String buildNumber, String error, String? comment, String? stackTrace, ReportableInfo deviceInfo
});


@override $ReportableInfoCopyWith<$Res> get deviceInfo;

}
/// @nodoc
class __$CrashReportDataCopyWithImpl<$Res>
    implements _$CrashReportDataCopyWith<$Res> {
  __$CrashReportDataCopyWithImpl(this._self, this._then);

  final _CrashReportData _self;
  final $Res Function(_CrashReportData) _then;

/// Create a copy of CrashReportData
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? reportId = null,Object? packageName = null,Object? appName = null,Object? version = null,Object? buildNumber = null,Object? error = null,Object? comment = freezed,Object? stackTrace = freezed,Object? deviceInfo = null,}) {
  return _then(_CrashReportData(
reportId: null == reportId ? _self.reportId : reportId // ignore: cast_nullable_to_non_nullable
as CrashReportId,packageName: null == packageName ? _self.packageName : packageName // ignore: cast_nullable_to_non_nullable
as String,appName: null == appName ? _self.appName : appName // ignore: cast_nullable_to_non_nullable
as String,version: null == version ? _self.version : version // ignore: cast_nullable_to_non_nullable
as String,buildNumber: null == buildNumber ? _self.buildNumber : buildNumber // ignore: cast_nullable_to_non_nullable
as String,error: null == error ? _self.error : error // ignore: cast_nullable_to_non_nullable
as String,comment: freezed == comment ? _self.comment : comment // ignore: cast_nullable_to_non_nullable
as String?,stackTrace: freezed == stackTrace ? _self.stackTrace : stackTrace // ignore: cast_nullable_to_non_nullable
as String?,deviceInfo: null == deviceInfo ? _self.deviceInfo : deviceInfo // ignore: cast_nullable_to_non_nullable
as ReportableInfo,
  ));
}

/// Create a copy of CrashReportData
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ReportableInfoCopyWith<$Res> get deviceInfo {
  
  return $ReportableInfoCopyWith<$Res>(_self.deviceInfo, (value) {
    return _then(_self.copyWith(deviceInfo: value));
  });
}
}

/// @nodoc
mixin _$CrashReportSendResult implements DiagnosticableTreeMixin {




@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'CrashReportSendResult'))
    ;
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CrashReportSendResult);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'CrashReportSendResult()';
}


}

/// @nodoc
class $CrashReportSendResultCopyWith<$Res>  {
$CrashReportSendResultCopyWith(CrashReportSendResult _, $Res Function(CrashReportSendResult) __);
}



/// @nodoc


class CrashReportSendResultSuccess with DiagnosticableTreeMixin implements CrashReportSendResult {
  const CrashReportSendResultSuccess();
  





@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'CrashReportSendResult.success'))
    ;
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CrashReportSendResultSuccess);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'CrashReportSendResult.success()';
}


}




/// @nodoc


class CrashReportSendResultEmailUnsupported with DiagnosticableTreeMixin implements CrashReportSendResult {
  const CrashReportSendResultEmailUnsupported();
  





@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'CrashReportSendResult.emailUnsupported'))
    ;
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CrashReportSendResultEmailUnsupported);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'CrashReportSendResult.emailUnsupported()';
}


}




ReportableInfo _$ReportableInfoFromJson(
  Map<String, dynamic> json
) {
        switch (json['runtimeType']) {
                  case 'unknown':
          return UnknownReportableInfo.fromJson(
            json
          );
                case 'android':
          return AndroidReportableInfo.fromJson(
            json
          );
                case 'iOS':
          return IOSReportableInfo.fromJson(
            json
          );
                case 'linux':
          return LinuxReportableInfo.fromJson(
            json
          );
                case 'windows':
          return WindowsReportableInfo.fromJson(
            json
          );
                case 'macOS':
          return MacOSReportableInfo.fromJson(
            json
          );
                case 'web':
          return WebReportableInfo.fromJson(
            json
          );
        
          default:
            throw CheckedFromJsonException(
  json,
  'runtimeType',
  'ReportableInfo',
  'Invalid union type "${json['runtimeType']}"!'
);
        }
      
}

/// @nodoc
mixin _$ReportableInfo implements DiagnosticableTreeMixin {



  /// Serializes this ReportableInfo to a JSON map.
  Map<String, dynamic> toJson();

@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'ReportableInfo'))
    ;
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ReportableInfo);
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => runtimeType.hashCode;

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'ReportableInfo()';
}


}

/// @nodoc
class $ReportableInfoCopyWith<$Res>  {
$ReportableInfoCopyWith(ReportableInfo _, $Res Function(ReportableInfo) __);
}



/// @nodoc
@JsonSerializable()

class UnknownReportableInfo with DiagnosticableTreeMixin implements ReportableInfo {
  const UnknownReportableInfo({final  String? $type}): $type = $type ?? 'unknown';
  factory UnknownReportableInfo.fromJson(Map<String, dynamic> json) => _$UnknownReportableInfoFromJson(json);



@JsonKey(name: 'runtimeType')
final String $type;



@override
Map<String, dynamic> toJson() {
  return _$UnknownReportableInfoToJson(this, );
}
@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'ReportableInfo.unknown'))
    ;
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is UnknownReportableInfo);
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => runtimeType.hashCode;

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'ReportableInfo.unknown()';
}


}




/// @nodoc
@JsonSerializable()

class AndroidReportableInfo with DiagnosticableTreeMixin implements ReportableInfo {
  const AndroidReportableInfo({this.systemVersion, final  List<String?> supportedAbis = const [], this.brand, this.device, this.model, this.hardware, this.product, final  String? $type}): _supportedAbis = supportedAbis,$type = $type ?? 'android';
  factory AndroidReportableInfo.fromJson(Map<String, dynamic> json) => _$AndroidReportableInfoFromJson(json);

 final  String? systemVersion;
/// An ordered list of ABIs supported by this device.
 final  List<String?> _supportedAbis;
/// An ordered list of ABIs supported by this device.
@JsonKey() List<String?> get supportedAbis {
  if (_supportedAbis is EqualUnmodifiableListView) return _supportedAbis;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_supportedAbis);
}

/// The consumer-visible brand with which
/// the product/hardware will be associated, if any.
 final  String? brand;
/// The name of the industrial design.
 final  String? device;
/// The end-user-visible name for the end product.
 final  String? model;
/// The name of the hardware (from the kernel command line or /proc).
 final  String? hardware;
/// The name of the overall product.
 final  String? product;

@JsonKey(name: 'runtimeType')
final String $type;


/// Create a copy of ReportableInfo
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AndroidReportableInfoCopyWith<AndroidReportableInfo> get copyWith => _$AndroidReportableInfoCopyWithImpl<AndroidReportableInfo>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$AndroidReportableInfoToJson(this, );
}
@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'ReportableInfo.android'))
    ..add(DiagnosticsProperty('systemVersion', systemVersion))..add(DiagnosticsProperty('supportedAbis', supportedAbis))..add(DiagnosticsProperty('brand', brand))..add(DiagnosticsProperty('device', device))..add(DiagnosticsProperty('model', model))..add(DiagnosticsProperty('hardware', hardware))..add(DiagnosticsProperty('product', product));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AndroidReportableInfo&&(identical(other.systemVersion, systemVersion) || other.systemVersion == systemVersion)&&const DeepCollectionEquality().equals(other._supportedAbis, _supportedAbis)&&(identical(other.brand, brand) || other.brand == brand)&&(identical(other.device, device) || other.device == device)&&(identical(other.model, model) || other.model == model)&&(identical(other.hardware, hardware) || other.hardware == hardware)&&(identical(other.product, product) || other.product == product));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,systemVersion,const DeepCollectionEquality().hash(_supportedAbis),brand,device,model,hardware,product);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'ReportableInfo.android(systemVersion: $systemVersion, supportedAbis: $supportedAbis, brand: $brand, device: $device, model: $model, hardware: $hardware, product: $product)';
}


}

/// @nodoc
abstract mixin class $AndroidReportableInfoCopyWith<$Res> implements $ReportableInfoCopyWith<$Res> {
  factory $AndroidReportableInfoCopyWith(AndroidReportableInfo value, $Res Function(AndroidReportableInfo) _then) = _$AndroidReportableInfoCopyWithImpl;
@useResult
$Res call({
 String? systemVersion, List<String?> supportedAbis, String? brand, String? device, String? model, String? hardware, String? product
});




}
/// @nodoc
class _$AndroidReportableInfoCopyWithImpl<$Res>
    implements $AndroidReportableInfoCopyWith<$Res> {
  _$AndroidReportableInfoCopyWithImpl(this._self, this._then);

  final AndroidReportableInfo _self;
  final $Res Function(AndroidReportableInfo) _then;

/// Create a copy of ReportableInfo
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? systemVersion = freezed,Object? supportedAbis = null,Object? brand = freezed,Object? device = freezed,Object? model = freezed,Object? hardware = freezed,Object? product = freezed,}) {
  return _then(AndroidReportableInfo(
systemVersion: freezed == systemVersion ? _self.systemVersion : systemVersion // ignore: cast_nullable_to_non_nullable
as String?,supportedAbis: null == supportedAbis ? _self._supportedAbis : supportedAbis // ignore: cast_nullable_to_non_nullable
as List<String?>,brand: freezed == brand ? _self.brand : brand // ignore: cast_nullable_to_non_nullable
as String?,device: freezed == device ? _self.device : device // ignore: cast_nullable_to_non_nullable
as String?,model: freezed == model ? _self.model : model // ignore: cast_nullable_to_non_nullable
as String?,hardware: freezed == hardware ? _self.hardware : hardware // ignore: cast_nullable_to_non_nullable
as String?,product: freezed == product ? _self.product : product // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

/// @nodoc
@JsonSerializable()

class IOSReportableInfo with DiagnosticableTreeMixin implements ReportableInfo {
  const IOSReportableInfo({this.deviceName, this.deviceModel, this.systemName, this.systemVersion, final  String? $type}): $type = $type ?? 'iOS';
  factory IOSReportableInfo.fromJson(Map<String, dynamic> json) => _$IOSReportableInfoFromJson(json);

 final  String? deviceName;
 final  String? deviceModel;
 final  String? systemName;
 final  String? systemVersion;

@JsonKey(name: 'runtimeType')
final String $type;


/// Create a copy of ReportableInfo
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$IOSReportableInfoCopyWith<IOSReportableInfo> get copyWith => _$IOSReportableInfoCopyWithImpl<IOSReportableInfo>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$IOSReportableInfoToJson(this, );
}
@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'ReportableInfo.iOS'))
    ..add(DiagnosticsProperty('deviceName', deviceName))..add(DiagnosticsProperty('deviceModel', deviceModel))..add(DiagnosticsProperty('systemName', systemName))..add(DiagnosticsProperty('systemVersion', systemVersion));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is IOSReportableInfo&&(identical(other.deviceName, deviceName) || other.deviceName == deviceName)&&(identical(other.deviceModel, deviceModel) || other.deviceModel == deviceModel)&&(identical(other.systemName, systemName) || other.systemName == systemName)&&(identical(other.systemVersion, systemVersion) || other.systemVersion == systemVersion));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,deviceName,deviceModel,systemName,systemVersion);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'ReportableInfo.iOS(deviceName: $deviceName, deviceModel: $deviceModel, systemName: $systemName, systemVersion: $systemVersion)';
}


}

/// @nodoc
abstract mixin class $IOSReportableInfoCopyWith<$Res> implements $ReportableInfoCopyWith<$Res> {
  factory $IOSReportableInfoCopyWith(IOSReportableInfo value, $Res Function(IOSReportableInfo) _then) = _$IOSReportableInfoCopyWithImpl;
@useResult
$Res call({
 String? deviceName, String? deviceModel, String? systemName, String? systemVersion
});




}
/// @nodoc
class _$IOSReportableInfoCopyWithImpl<$Res>
    implements $IOSReportableInfoCopyWith<$Res> {
  _$IOSReportableInfoCopyWithImpl(this._self, this._then);

  final IOSReportableInfo _self;
  final $Res Function(IOSReportableInfo) _then;

/// Create a copy of ReportableInfo
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? deviceName = freezed,Object? deviceModel = freezed,Object? systemName = freezed,Object? systemVersion = freezed,}) {
  return _then(IOSReportableInfo(
deviceName: freezed == deviceName ? _self.deviceName : deviceName // ignore: cast_nullable_to_non_nullable
as String?,deviceModel: freezed == deviceModel ? _self.deviceModel : deviceModel // ignore: cast_nullable_to_non_nullable
as String?,systemName: freezed == systemName ? _self.systemName : systemName // ignore: cast_nullable_to_non_nullable
as String?,systemVersion: freezed == systemVersion ? _self.systemVersion : systemVersion // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

/// @nodoc
@JsonSerializable()

class LinuxReportableInfo with DiagnosticableTreeMixin implements ReportableInfo {
  const LinuxReportableInfo({required this.osName, required this.kernelVersion, this.osVersion, final  String? $type}): $type = $type ?? 'linux';
  factory LinuxReportableInfo.fromJson(Map<String, dynamic> json) => _$LinuxReportableInfoFromJson(json);

 final  String osName;
 final  String kernelVersion;
 final  String? osVersion;

@JsonKey(name: 'runtimeType')
final String $type;


/// Create a copy of ReportableInfo
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$LinuxReportableInfoCopyWith<LinuxReportableInfo> get copyWith => _$LinuxReportableInfoCopyWithImpl<LinuxReportableInfo>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$LinuxReportableInfoToJson(this, );
}
@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'ReportableInfo.linux'))
    ..add(DiagnosticsProperty('osName', osName))..add(DiagnosticsProperty('kernelVersion', kernelVersion))..add(DiagnosticsProperty('osVersion', osVersion));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is LinuxReportableInfo&&(identical(other.osName, osName) || other.osName == osName)&&(identical(other.kernelVersion, kernelVersion) || other.kernelVersion == kernelVersion)&&(identical(other.osVersion, osVersion) || other.osVersion == osVersion));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,osName,kernelVersion,osVersion);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'ReportableInfo.linux(osName: $osName, kernelVersion: $kernelVersion, osVersion: $osVersion)';
}


}

/// @nodoc
abstract mixin class $LinuxReportableInfoCopyWith<$Res> implements $ReportableInfoCopyWith<$Res> {
  factory $LinuxReportableInfoCopyWith(LinuxReportableInfo value, $Res Function(LinuxReportableInfo) _then) = _$LinuxReportableInfoCopyWithImpl;
@useResult
$Res call({
 String osName, String kernelVersion, String? osVersion
});




}
/// @nodoc
class _$LinuxReportableInfoCopyWithImpl<$Res>
    implements $LinuxReportableInfoCopyWith<$Res> {
  _$LinuxReportableInfoCopyWithImpl(this._self, this._then);

  final LinuxReportableInfo _self;
  final $Res Function(LinuxReportableInfo) _then;

/// Create a copy of ReportableInfo
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? osName = null,Object? kernelVersion = null,Object? osVersion = freezed,}) {
  return _then(LinuxReportableInfo(
osName: null == osName ? _self.osName : osName // ignore: cast_nullable_to_non_nullable
as String,kernelVersion: null == kernelVersion ? _self.kernelVersion : kernelVersion // ignore: cast_nullable_to_non_nullable
as String,osVersion: freezed == osVersion ? _self.osVersion : osVersion // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

/// @nodoc
@JsonSerializable()

class WindowsReportableInfo with DiagnosticableTreeMixin implements ReportableInfo {
  const WindowsReportableInfo({required this.osVersion, final  String? $type}): $type = $type ?? 'windows';
  factory WindowsReportableInfo.fromJson(Map<String, dynamic> json) => _$WindowsReportableInfoFromJson(json);

 final  String osVersion;

@JsonKey(name: 'runtimeType')
final String $type;


/// Create a copy of ReportableInfo
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$WindowsReportableInfoCopyWith<WindowsReportableInfo> get copyWith => _$WindowsReportableInfoCopyWithImpl<WindowsReportableInfo>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$WindowsReportableInfoToJson(this, );
}
@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'ReportableInfo.windows'))
    ..add(DiagnosticsProperty('osVersion', osVersion));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is WindowsReportableInfo&&(identical(other.osVersion, osVersion) || other.osVersion == osVersion));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,osVersion);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'ReportableInfo.windows(osVersion: $osVersion)';
}


}

/// @nodoc
abstract mixin class $WindowsReportableInfoCopyWith<$Res> implements $ReportableInfoCopyWith<$Res> {
  factory $WindowsReportableInfoCopyWith(WindowsReportableInfo value, $Res Function(WindowsReportableInfo) _then) = _$WindowsReportableInfoCopyWithImpl;
@useResult
$Res call({
 String osVersion
});




}
/// @nodoc
class _$WindowsReportableInfoCopyWithImpl<$Res>
    implements $WindowsReportableInfoCopyWith<$Res> {
  _$WindowsReportableInfoCopyWithImpl(this._self, this._then);

  final WindowsReportableInfo _self;
  final $Res Function(WindowsReportableInfo) _then;

/// Create a copy of ReportableInfo
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? osVersion = null,}) {
  return _then(WindowsReportableInfo(
osVersion: null == osVersion ? _self.osVersion : osVersion // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc
@JsonSerializable()

class MacOSReportableInfo with DiagnosticableTreeMixin implements ReportableInfo {
  const MacOSReportableInfo({required this.arch, required this.kernelVersion, required this.osVersion, required this.model, final  String? $type}): $type = $type ?? 'macOS';
  factory MacOSReportableInfo.fromJson(Map<String, dynamic> json) => _$MacOSReportableInfoFromJson(json);

 final  String arch;
 final  String kernelVersion;
 final  String osVersion;
 final  String model;

@JsonKey(name: 'runtimeType')
final String $type;


/// Create a copy of ReportableInfo
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$MacOSReportableInfoCopyWith<MacOSReportableInfo> get copyWith => _$MacOSReportableInfoCopyWithImpl<MacOSReportableInfo>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$MacOSReportableInfoToJson(this, );
}
@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'ReportableInfo.macOS'))
    ..add(DiagnosticsProperty('arch', arch))..add(DiagnosticsProperty('kernelVersion', kernelVersion))..add(DiagnosticsProperty('osVersion', osVersion))..add(DiagnosticsProperty('model', model));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is MacOSReportableInfo&&(identical(other.arch, arch) || other.arch == arch)&&(identical(other.kernelVersion, kernelVersion) || other.kernelVersion == kernelVersion)&&(identical(other.osVersion, osVersion) || other.osVersion == osVersion)&&(identical(other.model, model) || other.model == model));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,arch,kernelVersion,osVersion,model);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'ReportableInfo.macOS(arch: $arch, kernelVersion: $kernelVersion, osVersion: $osVersion, model: $model)';
}


}

/// @nodoc
abstract mixin class $MacOSReportableInfoCopyWith<$Res> implements $ReportableInfoCopyWith<$Res> {
  factory $MacOSReportableInfoCopyWith(MacOSReportableInfo value, $Res Function(MacOSReportableInfo) _then) = _$MacOSReportableInfoCopyWithImpl;
@useResult
$Res call({
 String arch, String kernelVersion, String osVersion, String model
});




}
/// @nodoc
class _$MacOSReportableInfoCopyWithImpl<$Res>
    implements $MacOSReportableInfoCopyWith<$Res> {
  _$MacOSReportableInfoCopyWithImpl(this._self, this._then);

  final MacOSReportableInfo _self;
  final $Res Function(MacOSReportableInfo) _then;

/// Create a copy of ReportableInfo
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? arch = null,Object? kernelVersion = null,Object? osVersion = null,Object? model = null,}) {
  return _then(MacOSReportableInfo(
arch: null == arch ? _self.arch : arch // ignore: cast_nullable_to_non_nullable
as String,kernelVersion: null == kernelVersion ? _self.kernelVersion : kernelVersion // ignore: cast_nullable_to_non_nullable
as String,osVersion: null == osVersion ? _self.osVersion : osVersion // ignore: cast_nullable_to_non_nullable
as String,model: null == model ? _self.model : model // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc
@JsonSerializable()

class WebReportableInfo with DiagnosticableTreeMixin implements ReportableInfo {
  const WebReportableInfo({required this.browserName, this.platform, this.vendor, final  String? $type}): $type = $type ?? 'web';
  factory WebReportableInfo.fromJson(Map<String, dynamic> json) => _$WebReportableInfoFromJson(json);

 final  String browserName;
/// A DOMString identifying the platform on which the browser is running
 final  String? platform;
/// The vendor name of the current browser
 final  String? vendor;

@JsonKey(name: 'runtimeType')
final String $type;


/// Create a copy of ReportableInfo
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$WebReportableInfoCopyWith<WebReportableInfo> get copyWith => _$WebReportableInfoCopyWithImpl<WebReportableInfo>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$WebReportableInfoToJson(this, );
}
@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'ReportableInfo.web'))
    ..add(DiagnosticsProperty('browserName', browserName))..add(DiagnosticsProperty('platform', platform))..add(DiagnosticsProperty('vendor', vendor));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is WebReportableInfo&&(identical(other.browserName, browserName) || other.browserName == browserName)&&(identical(other.platform, platform) || other.platform == platform)&&(identical(other.vendor, vendor) || other.vendor == vendor));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,browserName,platform,vendor);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'ReportableInfo.web(browserName: $browserName, platform: $platform, vendor: $vendor)';
}


}

/// @nodoc
abstract mixin class $WebReportableInfoCopyWith<$Res> implements $ReportableInfoCopyWith<$Res> {
  factory $WebReportableInfoCopyWith(WebReportableInfo value, $Res Function(WebReportableInfo) _then) = _$WebReportableInfoCopyWithImpl;
@useResult
$Res call({
 String browserName, String? platform, String? vendor
});




}
/// @nodoc
class _$WebReportableInfoCopyWithImpl<$Res>
    implements $WebReportableInfoCopyWith<$Res> {
  _$WebReportableInfoCopyWithImpl(this._self, this._then);

  final WebReportableInfo _self;
  final $Res Function(WebReportableInfo) _then;

/// Create a copy of ReportableInfo
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? browserName = null,Object? platform = freezed,Object? vendor = freezed,}) {
  return _then(WebReportableInfo(
browserName: null == browserName ? _self.browserName : browserName // ignore: cast_nullable_to_non_nullable
as String,platform: freezed == platform ? _self.platform : platform // ignore: cast_nullable_to_non_nullable
as String?,vendor: freezed == vendor ? _self.vendor : vendor // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
