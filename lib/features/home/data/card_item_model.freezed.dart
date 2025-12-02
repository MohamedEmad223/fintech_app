// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'card_item_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$CardItemModel {

 String get title; String get value; String? get percent;
/// Create a copy of CardItemModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CardItemModelCopyWith<CardItemModel> get copyWith => _$CardItemModelCopyWithImpl<CardItemModel>(this as CardItemModel, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CardItemModel&&(identical(other.title, title) || other.title == title)&&(identical(other.value, value) || other.value == value)&&(identical(other.percent, percent) || other.percent == percent));
}


@override
int get hashCode => Object.hash(runtimeType,title,value,percent);

@override
String toString() {
  return 'CardItemModel(title: $title, value: $value, percent: $percent)';
}


}

/// @nodoc
abstract mixin class $CardItemModelCopyWith<$Res>  {
  factory $CardItemModelCopyWith(CardItemModel value, $Res Function(CardItemModel) _then) = _$CardItemModelCopyWithImpl;
@useResult
$Res call({
 String title, String value, String? percent
});




}
/// @nodoc
class _$CardItemModelCopyWithImpl<$Res>
    implements $CardItemModelCopyWith<$Res> {
  _$CardItemModelCopyWithImpl(this._self, this._then);

  final CardItemModel _self;
  final $Res Function(CardItemModel) _then;

/// Create a copy of CardItemModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? title = null,Object? value = null,Object? percent = freezed,}) {
  return _then(_self.copyWith(
title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,value: null == value ? _self.value : value // ignore: cast_nullable_to_non_nullable
as String,percent: freezed == percent ? _self.percent : percent // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [CardItemModel].
extension CardItemModelPatterns on CardItemModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _CardItemModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _CardItemModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _CardItemModel value)  $default,){
final _that = this;
switch (_that) {
case _CardItemModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _CardItemModel value)?  $default,){
final _that = this;
switch (_that) {
case _CardItemModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String title,  String value,  String? percent)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _CardItemModel() when $default != null:
return $default(_that.title,_that.value,_that.percent);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String title,  String value,  String? percent)  $default,) {final _that = this;
switch (_that) {
case _CardItemModel():
return $default(_that.title,_that.value,_that.percent);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String title,  String value,  String? percent)?  $default,) {final _that = this;
switch (_that) {
case _CardItemModel() when $default != null:
return $default(_that.title,_that.value,_that.percent);case _:
  return null;

}
}

}

/// @nodoc


class _CardItemModel implements CardItemModel {
  const _CardItemModel({required this.title, required this.value, this.percent});
  

@override final  String title;
@override final  String value;
@override final  String? percent;

/// Create a copy of CardItemModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CardItemModelCopyWith<_CardItemModel> get copyWith => __$CardItemModelCopyWithImpl<_CardItemModel>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _CardItemModel&&(identical(other.title, title) || other.title == title)&&(identical(other.value, value) || other.value == value)&&(identical(other.percent, percent) || other.percent == percent));
}


@override
int get hashCode => Object.hash(runtimeType,title,value,percent);

@override
String toString() {
  return 'CardItemModel(title: $title, value: $value, percent: $percent)';
}


}

/// @nodoc
abstract mixin class _$CardItemModelCopyWith<$Res> implements $CardItemModelCopyWith<$Res> {
  factory _$CardItemModelCopyWith(_CardItemModel value, $Res Function(_CardItemModel) _then) = __$CardItemModelCopyWithImpl;
@override @useResult
$Res call({
 String title, String value, String? percent
});




}
/// @nodoc
class __$CardItemModelCopyWithImpl<$Res>
    implements _$CardItemModelCopyWith<$Res> {
  __$CardItemModelCopyWithImpl(this._self, this._then);

  final _CardItemModel _self;
  final $Res Function(_CardItemModel) _then;

/// Create a copy of CardItemModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? title = null,Object? value = null,Object? percent = freezed,}) {
  return _then(_CardItemModel(
title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,value: null == value ? _self.value : value // ignore: cast_nullable_to_non_nullable
as String,percent: freezed == percent ? _self.percent : percent // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
