// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'selectable_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$SelectableState<T> implements DiagnosticableTreeMixin {




@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'SelectableState<$T>'))
    ;
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SelectableState<T>);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'SelectableState<$T>()';
}


}

/// @nodoc
class $SelectableStateCopyWith<T,$Res>  {
$SelectableStateCopyWith(SelectableState<T> _, $Res Function(SelectableState<T>) __);
}



/// @nodoc


class SelectableStateInitial<T> with DiagnosticableTreeMixin implements SelectableState<T> {
  const SelectableStateInitial();
  





@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'SelectableState<$T>.initial'))
    ;
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SelectableStateInitial<T>);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'SelectableState<$T>.initial()';
}


}




/// @nodoc


class SelectableStateNoSelection<T> with DiagnosticableTreeMixin implements SelectableState<T> {
  const SelectableStateNoSelection();
  





@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'SelectableState<$T>.noSelection'))
    ;
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SelectableStateNoSelection<T>);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'SelectableState<$T>.noSelection()';
}


}




/// @nodoc


class SelectableStateSelected<T> with DiagnosticableTreeMixin implements SelectableState<T> {
  const SelectableStateSelected(final  Set<T> items): _items = items;
  

 final  Set<T> _items;
 Set<T> get items {
  if (_items is EqualUnmodifiableSetView) return _items;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableSetView(_items);
}


/// Create a copy of SelectableState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SelectableStateSelectedCopyWith<T, SelectableStateSelected<T>> get copyWith => _$SelectableStateSelectedCopyWithImpl<T, SelectableStateSelected<T>>(this, _$identity);


@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'SelectableState<$T>.selected'))
    ..add(DiagnosticsProperty('items', items));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SelectableStateSelected<T>&&const DeepCollectionEquality().equals(other._items, _items));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_items));

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'SelectableState<$T>.selected(items: $items)';
}


}

/// @nodoc
abstract mixin class $SelectableStateSelectedCopyWith<T,$Res> implements $SelectableStateCopyWith<T, $Res> {
  factory $SelectableStateSelectedCopyWith(SelectableStateSelected<T> value, $Res Function(SelectableStateSelected<T>) _then) = _$SelectableStateSelectedCopyWithImpl;
@useResult
$Res call({
 Set<T> items
});




}
/// @nodoc
class _$SelectableStateSelectedCopyWithImpl<T,$Res>
    implements $SelectableStateSelectedCopyWith<T, $Res> {
  _$SelectableStateSelectedCopyWithImpl(this._self, this._then);

  final SelectableStateSelected<T> _self;
  final $Res Function(SelectableStateSelected<T>) _then;

/// Create a copy of SelectableState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? items = null,}) {
  return _then(SelectableStateSelected<T>(
null == items ? _self._items : items // ignore: cast_nullable_to_non_nullable
as Set<T>,
  ));
}


}

// dart format on
