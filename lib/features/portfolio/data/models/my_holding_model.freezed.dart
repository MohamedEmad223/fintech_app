// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'my_holding_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$MyHoldingModel implements DiagnosticableTreeMixin {

 String get icon; String get name; String get symbol; String get amount; String get dollarValue; String get portfolioPercentage; double get priceChange; double get percentageChange;
/// Create a copy of MyHoldingModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$MyHoldingModelCopyWith<MyHoldingModel> get copyWith => _$MyHoldingModelCopyWithImpl<MyHoldingModel>(this as MyHoldingModel, _$identity);


@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'MyHoldingModel'))
    ..add(DiagnosticsProperty('icon', icon))..add(DiagnosticsProperty('name', name))..add(DiagnosticsProperty('symbol', symbol))..add(DiagnosticsProperty('amount', amount))..add(DiagnosticsProperty('dollarValue', dollarValue))..add(DiagnosticsProperty('portfolioPercentage', portfolioPercentage))..add(DiagnosticsProperty('priceChange', priceChange))..add(DiagnosticsProperty('percentageChange', percentageChange));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is MyHoldingModel&&(identical(other.icon, icon) || other.icon == icon)&&(identical(other.name, name) || other.name == name)&&(identical(other.symbol, symbol) || other.symbol == symbol)&&(identical(other.amount, amount) || other.amount == amount)&&(identical(other.dollarValue, dollarValue) || other.dollarValue == dollarValue)&&(identical(other.portfolioPercentage, portfolioPercentage) || other.portfolioPercentage == portfolioPercentage)&&(identical(other.priceChange, priceChange) || other.priceChange == priceChange)&&(identical(other.percentageChange, percentageChange) || other.percentageChange == percentageChange));
}


@override
int get hashCode => Object.hash(runtimeType,icon,name,symbol,amount,dollarValue,portfolioPercentage,priceChange,percentageChange);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'MyHoldingModel(icon: $icon, name: $name, symbol: $symbol, amount: $amount, dollarValue: $dollarValue, portfolioPercentage: $portfolioPercentage, priceChange: $priceChange, percentageChange: $percentageChange)';
}


}

/// @nodoc
abstract mixin class $MyHoldingModelCopyWith<$Res>  {
  factory $MyHoldingModelCopyWith(MyHoldingModel value, $Res Function(MyHoldingModel) _then) = _$MyHoldingModelCopyWithImpl;
@useResult
$Res call({
 String icon, String name, String symbol, String amount, String dollarValue, String portfolioPercentage, double priceChange, double percentageChange
});




}
/// @nodoc
class _$MyHoldingModelCopyWithImpl<$Res>
    implements $MyHoldingModelCopyWith<$Res> {
  _$MyHoldingModelCopyWithImpl(this._self, this._then);

  final MyHoldingModel _self;
  final $Res Function(MyHoldingModel) _then;

/// Create a copy of MyHoldingModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? icon = null,Object? name = null,Object? symbol = null,Object? amount = null,Object? dollarValue = null,Object? portfolioPercentage = null,Object? priceChange = null,Object? percentageChange = null,}) {
  return _then(_self.copyWith(
icon: null == icon ? _self.icon : icon // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,symbol: null == symbol ? _self.symbol : symbol // ignore: cast_nullable_to_non_nullable
as String,amount: null == amount ? _self.amount : amount // ignore: cast_nullable_to_non_nullable
as String,dollarValue: null == dollarValue ? _self.dollarValue : dollarValue // ignore: cast_nullable_to_non_nullable
as String,portfolioPercentage: null == portfolioPercentage ? _self.portfolioPercentage : portfolioPercentage // ignore: cast_nullable_to_non_nullable
as String,priceChange: null == priceChange ? _self.priceChange : priceChange // ignore: cast_nullable_to_non_nullable
as double,percentageChange: null == percentageChange ? _self.percentageChange : percentageChange // ignore: cast_nullable_to_non_nullable
as double,
  ));
}

}


/// Adds pattern-matching-related methods to [MyHoldingModel].
extension MyHoldingModelPatterns on MyHoldingModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _MyHoldingModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _MyHoldingModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _MyHoldingModel value)  $default,){
final _that = this;
switch (_that) {
case _MyHoldingModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _MyHoldingModel value)?  $default,){
final _that = this;
switch (_that) {
case _MyHoldingModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String icon,  String name,  String symbol,  String amount,  String dollarValue,  String portfolioPercentage,  double priceChange,  double percentageChange)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _MyHoldingModel() when $default != null:
return $default(_that.icon,_that.name,_that.symbol,_that.amount,_that.dollarValue,_that.portfolioPercentage,_that.priceChange,_that.percentageChange);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String icon,  String name,  String symbol,  String amount,  String dollarValue,  String portfolioPercentage,  double priceChange,  double percentageChange)  $default,) {final _that = this;
switch (_that) {
case _MyHoldingModel():
return $default(_that.icon,_that.name,_that.symbol,_that.amount,_that.dollarValue,_that.portfolioPercentage,_that.priceChange,_that.percentageChange);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String icon,  String name,  String symbol,  String amount,  String dollarValue,  String portfolioPercentage,  double priceChange,  double percentageChange)?  $default,) {final _that = this;
switch (_that) {
case _MyHoldingModel() when $default != null:
return $default(_that.icon,_that.name,_that.symbol,_that.amount,_that.dollarValue,_that.portfolioPercentage,_that.priceChange,_that.percentageChange);case _:
  return null;

}
}

}

/// @nodoc


class _MyHoldingModel with DiagnosticableTreeMixin implements MyHoldingModel {
  const _MyHoldingModel({required this.icon, required this.name, required this.symbol, required this.amount, required this.dollarValue, required this.portfolioPercentage, required this.priceChange, required this.percentageChange});
  

@override final  String icon;
@override final  String name;
@override final  String symbol;
@override final  String amount;
@override final  String dollarValue;
@override final  String portfolioPercentage;
@override final  double priceChange;
@override final  double percentageChange;

/// Create a copy of MyHoldingModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$MyHoldingModelCopyWith<_MyHoldingModel> get copyWith => __$MyHoldingModelCopyWithImpl<_MyHoldingModel>(this, _$identity);


@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'MyHoldingModel'))
    ..add(DiagnosticsProperty('icon', icon))..add(DiagnosticsProperty('name', name))..add(DiagnosticsProperty('symbol', symbol))..add(DiagnosticsProperty('amount', amount))..add(DiagnosticsProperty('dollarValue', dollarValue))..add(DiagnosticsProperty('portfolioPercentage', portfolioPercentage))..add(DiagnosticsProperty('priceChange', priceChange))..add(DiagnosticsProperty('percentageChange', percentageChange));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _MyHoldingModel&&(identical(other.icon, icon) || other.icon == icon)&&(identical(other.name, name) || other.name == name)&&(identical(other.symbol, symbol) || other.symbol == symbol)&&(identical(other.amount, amount) || other.amount == amount)&&(identical(other.dollarValue, dollarValue) || other.dollarValue == dollarValue)&&(identical(other.portfolioPercentage, portfolioPercentage) || other.portfolioPercentage == portfolioPercentage)&&(identical(other.priceChange, priceChange) || other.priceChange == priceChange)&&(identical(other.percentageChange, percentageChange) || other.percentageChange == percentageChange));
}


@override
int get hashCode => Object.hash(runtimeType,icon,name,symbol,amount,dollarValue,portfolioPercentage,priceChange,percentageChange);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'MyHoldingModel(icon: $icon, name: $name, symbol: $symbol, amount: $amount, dollarValue: $dollarValue, portfolioPercentage: $portfolioPercentage, priceChange: $priceChange, percentageChange: $percentageChange)';
}


}

/// @nodoc
abstract mixin class _$MyHoldingModelCopyWith<$Res> implements $MyHoldingModelCopyWith<$Res> {
  factory _$MyHoldingModelCopyWith(_MyHoldingModel value, $Res Function(_MyHoldingModel) _then) = __$MyHoldingModelCopyWithImpl;
@override @useResult
$Res call({
 String icon, String name, String symbol, String amount, String dollarValue, String portfolioPercentage, double priceChange, double percentageChange
});




}
/// @nodoc
class __$MyHoldingModelCopyWithImpl<$Res>
    implements _$MyHoldingModelCopyWith<$Res> {
  __$MyHoldingModelCopyWithImpl(this._self, this._then);

  final _MyHoldingModel _self;
  final $Res Function(_MyHoldingModel) _then;

/// Create a copy of MyHoldingModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? icon = null,Object? name = null,Object? symbol = null,Object? amount = null,Object? dollarValue = null,Object? portfolioPercentage = null,Object? priceChange = null,Object? percentageChange = null,}) {
  return _then(_MyHoldingModel(
icon: null == icon ? _self.icon : icon // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,symbol: null == symbol ? _self.symbol : symbol // ignore: cast_nullable_to_non_nullable
as String,amount: null == amount ? _self.amount : amount // ignore: cast_nullable_to_non_nullable
as String,dollarValue: null == dollarValue ? _self.dollarValue : dollarValue // ignore: cast_nullable_to_non_nullable
as String,portfolioPercentage: null == portfolioPercentage ? _self.portfolioPercentage : portfolioPercentage // ignore: cast_nullable_to_non_nullable
as String,priceChange: null == priceChange ? _self.priceChange : priceChange // ignore: cast_nullable_to_non_nullable
as double,percentageChange: null == percentageChange ? _self.percentageChange : percentageChange // ignore: cast_nullable_to_non_nullable
as double,
  ));
}


}

// dart format on
