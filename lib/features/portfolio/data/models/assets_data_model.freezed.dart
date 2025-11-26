// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'assets_data_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$AssetsDataModel {

 String get name; String get symbol; double get percentage; Color get color; IconData get icon;
/// Create a copy of AssetsDataModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AssetsDataModelCopyWith<AssetsDataModel> get copyWith => _$AssetsDataModelCopyWithImpl<AssetsDataModel>(this as AssetsDataModel, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AssetsDataModel&&(identical(other.name, name) || other.name == name)&&(identical(other.symbol, symbol) || other.symbol == symbol)&&(identical(other.percentage, percentage) || other.percentage == percentage)&&(identical(other.color, color) || other.color == color)&&(identical(other.icon, icon) || other.icon == icon));
}


@override
int get hashCode => Object.hash(runtimeType,name,symbol,percentage,color,icon);

@override
String toString() {
  return 'AssetsDataModel(name: $name, symbol: $symbol, percentage: $percentage, color: $color, icon: $icon)';
}


}

/// @nodoc
abstract mixin class $AssetsDataModelCopyWith<$Res>  {
  factory $AssetsDataModelCopyWith(AssetsDataModel value, $Res Function(AssetsDataModel) _then) = _$AssetsDataModelCopyWithImpl;
@useResult
$Res call({
 String name, String symbol, double percentage, Color color, IconData icon
});




}
/// @nodoc
class _$AssetsDataModelCopyWithImpl<$Res>
    implements $AssetsDataModelCopyWith<$Res> {
  _$AssetsDataModelCopyWithImpl(this._self, this._then);

  final AssetsDataModel _self;
  final $Res Function(AssetsDataModel) _then;

/// Create a copy of AssetsDataModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? name = null,Object? symbol = null,Object? percentage = null,Object? color = null,Object? icon = null,}) {
  return _then(_self.copyWith(
name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,symbol: null == symbol ? _self.symbol : symbol // ignore: cast_nullable_to_non_nullable
as String,percentage: null == percentage ? _self.percentage : percentage // ignore: cast_nullable_to_non_nullable
as double,color: null == color ? _self.color : color // ignore: cast_nullable_to_non_nullable
as Color,icon: null == icon ? _self.icon : icon // ignore: cast_nullable_to_non_nullable
as IconData,
  ));
}

}


/// Adds pattern-matching-related methods to [AssetsDataModel].
extension AssetsDataModelPatterns on AssetsDataModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _AssetsDataModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _AssetsDataModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _AssetsDataModel value)  $default,){
final _that = this;
switch (_that) {
case _AssetsDataModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _AssetsDataModel value)?  $default,){
final _that = this;
switch (_that) {
case _AssetsDataModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String name,  String symbol,  double percentage,  Color color,  IconData icon)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _AssetsDataModel() when $default != null:
return $default(_that.name,_that.symbol,_that.percentage,_that.color,_that.icon);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String name,  String symbol,  double percentage,  Color color,  IconData icon)  $default,) {final _that = this;
switch (_that) {
case _AssetsDataModel():
return $default(_that.name,_that.symbol,_that.percentage,_that.color,_that.icon);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String name,  String symbol,  double percentage,  Color color,  IconData icon)?  $default,) {final _that = this;
switch (_that) {
case _AssetsDataModel() when $default != null:
return $default(_that.name,_that.symbol,_that.percentage,_that.color,_that.icon);case _:
  return null;

}
}

}

/// @nodoc


class _AssetsDataModel implements AssetsDataModel {
  const _AssetsDataModel({required this.name, required this.symbol, required this.percentage, required this.color, required this.icon});
  

@override final  String name;
@override final  String symbol;
@override final  double percentage;
@override final  Color color;
@override final  IconData icon;

/// Create a copy of AssetsDataModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$AssetsDataModelCopyWith<_AssetsDataModel> get copyWith => __$AssetsDataModelCopyWithImpl<_AssetsDataModel>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _AssetsDataModel&&(identical(other.name, name) || other.name == name)&&(identical(other.symbol, symbol) || other.symbol == symbol)&&(identical(other.percentage, percentage) || other.percentage == percentage)&&(identical(other.color, color) || other.color == color)&&(identical(other.icon, icon) || other.icon == icon));
}


@override
int get hashCode => Object.hash(runtimeType,name,symbol,percentage,color,icon);

@override
String toString() {
  return 'AssetsDataModel(name: $name, symbol: $symbol, percentage: $percentage, color: $color, icon: $icon)';
}


}

/// @nodoc
abstract mixin class _$AssetsDataModelCopyWith<$Res> implements $AssetsDataModelCopyWith<$Res> {
  factory _$AssetsDataModelCopyWith(_AssetsDataModel value, $Res Function(_AssetsDataModel) _then) = __$AssetsDataModelCopyWithImpl;
@override @useResult
$Res call({
 String name, String symbol, double percentage, Color color, IconData icon
});




}
/// @nodoc
class __$AssetsDataModelCopyWithImpl<$Res>
    implements _$AssetsDataModelCopyWith<$Res> {
  __$AssetsDataModelCopyWithImpl(this._self, this._then);

  final _AssetsDataModel _self;
  final $Res Function(_AssetsDataModel) _then;

/// Create a copy of AssetsDataModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? name = null,Object? symbol = null,Object? percentage = null,Object? color = null,Object? icon = null,}) {
  return _then(_AssetsDataModel(
name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,symbol: null == symbol ? _self.symbol : symbol // ignore: cast_nullable_to_non_nullable
as String,percentage: null == percentage ? _self.percentage : percentage // ignore: cast_nullable_to_non_nullable
as double,color: null == color ? _self.color : color // ignore: cast_nullable_to_non_nullable
as Color,icon: null == icon ? _self.icon : icon // ignore: cast_nullable_to_non_nullable
as IconData,
  ));
}


}

// dart format on
