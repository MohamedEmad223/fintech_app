// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'trending_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$TrendingModel {

 String get name; String get symbol; String get value; String get percent; String get icon;
/// Create a copy of TrendingModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$TrendingModelCopyWith<TrendingModel> get copyWith => _$TrendingModelCopyWithImpl<TrendingModel>(this as TrendingModel, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is TrendingModel&&(identical(other.name, name) || other.name == name)&&(identical(other.symbol, symbol) || other.symbol == symbol)&&(identical(other.value, value) || other.value == value)&&(identical(other.percent, percent) || other.percent == percent)&&(identical(other.icon, icon) || other.icon == icon));
}


@override
int get hashCode => Object.hash(runtimeType,name,symbol,value,percent,icon);

@override
String toString() {
  return 'TrendingModel(name: $name, symbol: $symbol, value: $value, percent: $percent, icon: $icon)';
}


}

/// @nodoc
abstract mixin class $TrendingModelCopyWith<$Res>  {
  factory $TrendingModelCopyWith(TrendingModel value, $Res Function(TrendingModel) _then) = _$TrendingModelCopyWithImpl;
@useResult
$Res call({
 String name, String symbol, String value, String percent, String icon
});




}
/// @nodoc
class _$TrendingModelCopyWithImpl<$Res>
    implements $TrendingModelCopyWith<$Res> {
  _$TrendingModelCopyWithImpl(this._self, this._then);

  final TrendingModel _self;
  final $Res Function(TrendingModel) _then;

/// Create a copy of TrendingModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? name = null,Object? symbol = null,Object? value = null,Object? percent = null,Object? icon = null,}) {
  return _then(_self.copyWith(
name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,symbol: null == symbol ? _self.symbol : symbol // ignore: cast_nullable_to_non_nullable
as String,value: null == value ? _self.value : value // ignore: cast_nullable_to_non_nullable
as String,percent: null == percent ? _self.percent : percent // ignore: cast_nullable_to_non_nullable
as String,icon: null == icon ? _self.icon : icon // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [TrendingModel].
extension TrendingModelPatterns on TrendingModel {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _TrendingModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _TrendingModel() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _TrendingModel value)  $default,){
final _that = this;
switch (_that) {
case _TrendingModel():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _TrendingModel value)?  $default,){
final _that = this;
switch (_that) {
case _TrendingModel() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String name,  String symbol,  String value,  String percent,  String icon)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _TrendingModel() when $default != null:
return $default(_that.name,_that.symbol,_that.value,_that.percent,_that.icon);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String name,  String symbol,  String value,  String percent,  String icon)  $default,) {final _that = this;
switch (_that) {
case _TrendingModel():
return $default(_that.name,_that.symbol,_that.value,_that.percent,_that.icon);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String name,  String symbol,  String value,  String percent,  String icon)?  $default,) {final _that = this;
switch (_that) {
case _TrendingModel() when $default != null:
return $default(_that.name,_that.symbol,_that.value,_that.percent,_that.icon);case _:
  return null;

}
}

}

/// @nodoc


class _TrendingModel implements TrendingModel {
  const _TrendingModel({required this.name, required this.symbol, required this.value, required this.percent, required this.icon});
  

@override final  String name;
@override final  String symbol;
@override final  String value;
@override final  String percent;
@override final  String icon;

/// Create a copy of TrendingModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$TrendingModelCopyWith<_TrendingModel> get copyWith => __$TrendingModelCopyWithImpl<_TrendingModel>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _TrendingModel&&(identical(other.name, name) || other.name == name)&&(identical(other.symbol, symbol) || other.symbol == symbol)&&(identical(other.value, value) || other.value == value)&&(identical(other.percent, percent) || other.percent == percent)&&(identical(other.icon, icon) || other.icon == icon));
}


@override
int get hashCode => Object.hash(runtimeType,name,symbol,value,percent,icon);

@override
String toString() {
  return 'TrendingModel(name: $name, symbol: $symbol, value: $value, percent: $percent, icon: $icon)';
}


}

/// @nodoc
abstract mixin class _$TrendingModelCopyWith<$Res> implements $TrendingModelCopyWith<$Res> {
  factory _$TrendingModelCopyWith(_TrendingModel value, $Res Function(_TrendingModel) _then) = __$TrendingModelCopyWithImpl;
@override @useResult
$Res call({
 String name, String symbol, String value, String percent, String icon
});




}
/// @nodoc
class __$TrendingModelCopyWithImpl<$Res>
    implements _$TrendingModelCopyWith<$Res> {
  __$TrendingModelCopyWithImpl(this._self, this._then);

  final _TrendingModel _self;
  final $Res Function(_TrendingModel) _then;

/// Create a copy of TrendingModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? name = null,Object? symbol = null,Object? value = null,Object? percent = null,Object? icon = null,}) {
  return _then(_TrendingModel(
name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,symbol: null == symbol ? _self.symbol : symbol // ignore: cast_nullable_to_non_nullable
as String,value: null == value ? _self.value : value // ignore: cast_nullable_to_non_nullable
as String,percent: null == percent ? _self.percent : percent // ignore: cast_nullable_to_non_nullable
as String,icon: null == icon ? _self.icon : icon // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
