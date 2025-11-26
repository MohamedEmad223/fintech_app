// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'coin_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$CoinState {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CoinState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'CoinState()';
}


}

/// @nodoc
class $CoinStateCopyWith<$Res>  {
$CoinStateCopyWith(CoinState _, $Res Function(CoinState) __);
}


/// Adds pattern-matching-related methods to [CoinState].
extension CoinStatePatterns on CoinState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( CoinInitial value)?  initial,TResult Function( CoinLoading value)?  loading,TResult Function( CoinSuccess value)?  success,TResult Function( CoinError value)?  error,TResult Function( CoinChartLoading value)?  chartLoading,required TResult orElse(),}){
final _that = this;
switch (_that) {
case CoinInitial() when initial != null:
return initial(_that);case CoinLoading() when loading != null:
return loading(_that);case CoinSuccess() when success != null:
return success(_that);case CoinError() when error != null:
return error(_that);case CoinChartLoading() when chartLoading != null:
return chartLoading(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( CoinInitial value)  initial,required TResult Function( CoinLoading value)  loading,required TResult Function( CoinSuccess value)  success,required TResult Function( CoinError value)  error,required TResult Function( CoinChartLoading value)  chartLoading,}){
final _that = this;
switch (_that) {
case CoinInitial():
return initial(_that);case CoinLoading():
return loading(_that);case CoinSuccess():
return success(_that);case CoinError():
return error(_that);case CoinChartLoading():
return chartLoading(_that);case _:
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( CoinInitial value)?  initial,TResult? Function( CoinLoading value)?  loading,TResult? Function( CoinSuccess value)?  success,TResult? Function( CoinError value)?  error,TResult? Function( CoinChartLoading value)?  chartLoading,}){
final _that = this;
switch (_that) {
case CoinInitial() when initial != null:
return initial(_that);case CoinLoading() when loading != null:
return loading(_that);case CoinSuccess() when success != null:
return success(_that);case CoinError() when error != null:
return error(_that);case CoinChartLoading() when chartLoading != null:
return chartLoading(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  initial,TResult Function()?  loading,TResult Function( CoinEntity coin,  CoinChartEntity chartData,  String selectedTimePeriod)?  success,TResult Function( ApiErrorModel error)?  error,TResult Function( CoinEntity coin,  CoinChartEntity chartData,  String selectedTimePeriod)?  chartLoading,required TResult orElse(),}) {final _that = this;
switch (_that) {
case CoinInitial() when initial != null:
return initial();case CoinLoading() when loading != null:
return loading();case CoinSuccess() when success != null:
return success(_that.coin,_that.chartData,_that.selectedTimePeriod);case CoinError() when error != null:
return error(_that.error);case CoinChartLoading() when chartLoading != null:
return chartLoading(_that.coin,_that.chartData,_that.selectedTimePeriod);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  initial,required TResult Function()  loading,required TResult Function( CoinEntity coin,  CoinChartEntity chartData,  String selectedTimePeriod)  success,required TResult Function( ApiErrorModel error)  error,required TResult Function( CoinEntity coin,  CoinChartEntity chartData,  String selectedTimePeriod)  chartLoading,}) {final _that = this;
switch (_that) {
case CoinInitial():
return initial();case CoinLoading():
return loading();case CoinSuccess():
return success(_that.coin,_that.chartData,_that.selectedTimePeriod);case CoinError():
return error(_that.error);case CoinChartLoading():
return chartLoading(_that.coin,_that.chartData,_that.selectedTimePeriod);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  initial,TResult? Function()?  loading,TResult? Function( CoinEntity coin,  CoinChartEntity chartData,  String selectedTimePeriod)?  success,TResult? Function( ApiErrorModel error)?  error,TResult? Function( CoinEntity coin,  CoinChartEntity chartData,  String selectedTimePeriod)?  chartLoading,}) {final _that = this;
switch (_that) {
case CoinInitial() when initial != null:
return initial();case CoinLoading() when loading != null:
return loading();case CoinSuccess() when success != null:
return success(_that.coin,_that.chartData,_that.selectedTimePeriod);case CoinError() when error != null:
return error(_that.error);case CoinChartLoading() when chartLoading != null:
return chartLoading(_that.coin,_that.chartData,_that.selectedTimePeriod);case _:
  return null;

}
}

}

/// @nodoc


class CoinInitial implements CoinState {
  const CoinInitial();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CoinInitial);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'CoinState.initial()';
}


}




/// @nodoc


class CoinLoading implements CoinState {
  const CoinLoading();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CoinLoading);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'CoinState.loading()';
}


}




/// @nodoc


class CoinSuccess implements CoinState {
  const CoinSuccess({required this.coin, required this.chartData, required this.selectedTimePeriod});
  

 final  CoinEntity coin;
 final  CoinChartEntity chartData;
 final  String selectedTimePeriod;

/// Create a copy of CoinState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CoinSuccessCopyWith<CoinSuccess> get copyWith => _$CoinSuccessCopyWithImpl<CoinSuccess>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CoinSuccess&&(identical(other.coin, coin) || other.coin == coin)&&(identical(other.chartData, chartData) || other.chartData == chartData)&&(identical(other.selectedTimePeriod, selectedTimePeriod) || other.selectedTimePeriod == selectedTimePeriod));
}


@override
int get hashCode => Object.hash(runtimeType,coin,chartData,selectedTimePeriod);

@override
String toString() {
  return 'CoinState.success(coin: $coin, chartData: $chartData, selectedTimePeriod: $selectedTimePeriod)';
}


}

/// @nodoc
abstract mixin class $CoinSuccessCopyWith<$Res> implements $CoinStateCopyWith<$Res> {
  factory $CoinSuccessCopyWith(CoinSuccess value, $Res Function(CoinSuccess) _then) = _$CoinSuccessCopyWithImpl;
@useResult
$Res call({
 CoinEntity coin, CoinChartEntity chartData, String selectedTimePeriod
});




}
/// @nodoc
class _$CoinSuccessCopyWithImpl<$Res>
    implements $CoinSuccessCopyWith<$Res> {
  _$CoinSuccessCopyWithImpl(this._self, this._then);

  final CoinSuccess _self;
  final $Res Function(CoinSuccess) _then;

/// Create a copy of CoinState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? coin = null,Object? chartData = null,Object? selectedTimePeriod = null,}) {
  return _then(CoinSuccess(
coin: null == coin ? _self.coin : coin // ignore: cast_nullable_to_non_nullable
as CoinEntity,chartData: null == chartData ? _self.chartData : chartData // ignore: cast_nullable_to_non_nullable
as CoinChartEntity,selectedTimePeriod: null == selectedTimePeriod ? _self.selectedTimePeriod : selectedTimePeriod // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class CoinError implements CoinState {
  const CoinError(this.error);
  

 final  ApiErrorModel error;

/// Create a copy of CoinState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CoinErrorCopyWith<CoinError> get copyWith => _$CoinErrorCopyWithImpl<CoinError>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CoinError&&(identical(other.error, error) || other.error == error));
}


@override
int get hashCode => Object.hash(runtimeType,error);

@override
String toString() {
  return 'CoinState.error(error: $error)';
}


}

/// @nodoc
abstract mixin class $CoinErrorCopyWith<$Res> implements $CoinStateCopyWith<$Res> {
  factory $CoinErrorCopyWith(CoinError value, $Res Function(CoinError) _then) = _$CoinErrorCopyWithImpl;
@useResult
$Res call({
 ApiErrorModel error
});




}
/// @nodoc
class _$CoinErrorCopyWithImpl<$Res>
    implements $CoinErrorCopyWith<$Res> {
  _$CoinErrorCopyWithImpl(this._self, this._then);

  final CoinError _self;
  final $Res Function(CoinError) _then;

/// Create a copy of CoinState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? error = null,}) {
  return _then(CoinError(
null == error ? _self.error : error // ignore: cast_nullable_to_non_nullable
as ApiErrorModel,
  ));
}


}

/// @nodoc


class CoinChartLoading implements CoinState {
  const CoinChartLoading({required this.coin, required this.chartData, required this.selectedTimePeriod});
  

 final  CoinEntity coin;
 final  CoinChartEntity chartData;
 final  String selectedTimePeriod;

/// Create a copy of CoinState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CoinChartLoadingCopyWith<CoinChartLoading> get copyWith => _$CoinChartLoadingCopyWithImpl<CoinChartLoading>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CoinChartLoading&&(identical(other.coin, coin) || other.coin == coin)&&(identical(other.chartData, chartData) || other.chartData == chartData)&&(identical(other.selectedTimePeriod, selectedTimePeriod) || other.selectedTimePeriod == selectedTimePeriod));
}


@override
int get hashCode => Object.hash(runtimeType,coin,chartData,selectedTimePeriod);

@override
String toString() {
  return 'CoinState.chartLoading(coin: $coin, chartData: $chartData, selectedTimePeriod: $selectedTimePeriod)';
}


}

/// @nodoc
abstract mixin class $CoinChartLoadingCopyWith<$Res> implements $CoinStateCopyWith<$Res> {
  factory $CoinChartLoadingCopyWith(CoinChartLoading value, $Res Function(CoinChartLoading) _then) = _$CoinChartLoadingCopyWithImpl;
@useResult
$Res call({
 CoinEntity coin, CoinChartEntity chartData, String selectedTimePeriod
});




}
/// @nodoc
class _$CoinChartLoadingCopyWithImpl<$Res>
    implements $CoinChartLoadingCopyWith<$Res> {
  _$CoinChartLoadingCopyWithImpl(this._self, this._then);

  final CoinChartLoading _self;
  final $Res Function(CoinChartLoading) _then;

/// Create a copy of CoinState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? coin = null,Object? chartData = null,Object? selectedTimePeriod = null,}) {
  return _then(CoinChartLoading(
coin: null == coin ? _self.coin : coin // ignore: cast_nullable_to_non_nullable
as CoinEntity,chartData: null == chartData ? _self.chartData : chartData // ignore: cast_nullable_to_non_nullable
as CoinChartEntity,selectedTimePeriod: null == selectedTimePeriod ? _self.selectedTimePeriod : selectedTimePeriod // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
