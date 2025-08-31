// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'notification_manager.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
NotificationAction _$NotificationActionFromJson(
  Map<String, dynamic> json
) {
        switch (json['runtimeType']) {
                  case 'reportCrash':
          return NotificationActionReportCrash.fromJson(
            json
          );
                case 'openRefImageList':
          return NotificationActionOpenRefImageList.fromJson(
            json
          );
        
          default:
            throw CheckedFromJsonException(
  json,
  'runtimeType',
  'NotificationAction',
  'Invalid union type "${json['runtimeType']}"!'
);
        }
      
}

/// @nodoc
mixin _$NotificationAction {



  /// Serializes this NotificationAction to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is NotificationAction);
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'NotificationAction()';
}


}

/// @nodoc
class $NotificationActionCopyWith<$Res>  {
$NotificationActionCopyWith(NotificationAction _, $Res Function(NotificationAction) __);
}



/// @nodoc
@JsonSerializable()

class NotificationActionReportCrash implements NotificationAction {
  const NotificationActionReportCrash({required this.info, final  String? $type}): $type = $type ?? 'reportCrash';
  factory NotificationActionReportCrash.fromJson(Map<String, dynamic> json) => _$NotificationActionReportCrashFromJson(json);

 final  CrashInfo info;

@JsonKey(name: 'runtimeType')
final String $type;


/// Create a copy of NotificationAction
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$NotificationActionReportCrashCopyWith<NotificationActionReportCrash> get copyWith => _$NotificationActionReportCrashCopyWithImpl<NotificationActionReportCrash>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$NotificationActionReportCrashToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is NotificationActionReportCrash&&(identical(other.info, info) || other.info == info));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,info);

@override
String toString() {
  return 'NotificationAction.reportCrash(info: $info)';
}


}

/// @nodoc
abstract mixin class $NotificationActionReportCrashCopyWith<$Res> implements $NotificationActionCopyWith<$Res> {
  factory $NotificationActionReportCrashCopyWith(NotificationActionReportCrash value, $Res Function(NotificationActionReportCrash) _then) = _$NotificationActionReportCrashCopyWithImpl;
@useResult
$Res call({
 CrashInfo info
});


$CrashInfoCopyWith<$Res> get info;

}
/// @nodoc
class _$NotificationActionReportCrashCopyWithImpl<$Res>
    implements $NotificationActionReportCrashCopyWith<$Res> {
  _$NotificationActionReportCrashCopyWithImpl(this._self, this._then);

  final NotificationActionReportCrash _self;
  final $Res Function(NotificationActionReportCrash) _then;

/// Create a copy of NotificationAction
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? info = null,}) {
  return _then(NotificationActionReportCrash(
info: null == info ? _self.info : info // ignore: cast_nullable_to_non_nullable
as CrashInfo,
  ));
}

/// Create a copy of NotificationAction
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$CrashInfoCopyWith<$Res> get info {
  
  return $CrashInfoCopyWith<$Res>(_self.info, (value) {
    return _then(_self.copyWith(info: value));
  });
}
}

/// @nodoc
@JsonSerializable()

class NotificationActionOpenRefImageList implements NotificationAction {
  const NotificationActionOpenRefImageList({final  String? $type}): $type = $type ?? 'openRefImageList';
  factory NotificationActionOpenRefImageList.fromJson(Map<String, dynamic> json) => _$NotificationActionOpenRefImageListFromJson(json);



@JsonKey(name: 'runtimeType')
final String $type;



@override
Map<String, dynamic> toJson() {
  return _$NotificationActionOpenRefImageListToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is NotificationActionOpenRefImageList);
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'NotificationAction.openRefImageList()';
}


}




// dart format on
