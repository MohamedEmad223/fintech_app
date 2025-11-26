// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'market_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$MarketState {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is MarketState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'MarketState()';
}


}

/// @nodoc
class $MarketStateCopyWith<$Res>  {
$MarketStateCopyWith(MarketState _, $Res Function(MarketState) __);
}


/// Adds pattern-matching-related methods to [MarketState].
extension MarketStatePatterns on MarketState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( MarketInitial value)?  initial,TResult Function( MarketLoading value)?  loading,TResult Function( MarketSuccess value)?  success,TResult Function( MarketError value)?  error,TResult Function( MarketPaginationLoading value)?  paginationLoading,TResult Function( MarketPaginationError value)?  paginationError,required TResult orElse(),}){
final _that = this;
switch (_that) {
case MarketInitial() when initial != null:
return initial(_that);case MarketLoading() when loading != null:
return loading(_that);case MarketSuccess() when success != null:
return success(_that);case MarketError() when error != null:
return error(_that);case MarketPaginationLoading() when paginationLoading != null:
return paginationLoading(_that);case MarketPaginationError() when paginationError != null:
return paginationError(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( MarketInitial value)  initial,required TResult Function( MarketLoading value)  loading,required TResult Function( MarketSuccess value)  success,required TResult Function( MarketError value)  error,required TResult Function( MarketPaginationLoading value)  paginationLoading,required TResult Function( MarketPaginationError value)  paginationError,}){
final _that = this;
switch (_that) {
case MarketInitial():
return initial(_that);case MarketLoading():
return loading(_that);case MarketSuccess():
return success(_that);case MarketError():
return error(_that);case MarketPaginationLoading():
return paginationLoading(_that);case MarketPaginationError():
return paginationError(_that);case _:
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( MarketInitial value)?  initial,TResult? Function( MarketLoading value)?  loading,TResult? Function( MarketSuccess value)?  success,TResult? Function( MarketError value)?  error,TResult? Function( MarketPaginationLoading value)?  paginationLoading,TResult? Function( MarketPaginationError value)?  paginationError,}){
final _that = this;
switch (_that) {
case MarketInitial() when initial != null:
return initial(_that);case MarketLoading() when loading != null:
return loading(_that);case MarketSuccess() when success != null:
return success(_that);case MarketError() when error != null:
return error(_that);case MarketPaginationLoading() when paginationLoading != null:
return paginationLoading(_that);case MarketPaginationError() when paginationError != null:
return paginationError(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  initial,TResult Function()?  loading,TResult Function( List<MarketCoinEntity> coins)?  success,TResult Function( ApiErrorModel error)?  error,TResult Function( List<MarketCoinEntity> coins)?  paginationLoading,TResult Function( List<MarketCoinEntity> coins,  ApiErrorModel error)?  paginationError,required TResult orElse(),}) {final _that = this;
switch (_that) {
case MarketInitial() when initial != null:
return initial();case MarketLoading() when loading != null:
return loading();case MarketSuccess() when success != null:
return success(_that.coins);case MarketError() when error != null:
return error(_that.error);case MarketPaginationLoading() when paginationLoading != null:
return paginationLoading(_that.coins);case MarketPaginationError() when paginationError != null:
return paginationError(_that.coins,_that.error);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  initial,required TResult Function()  loading,required TResult Function( List<MarketCoinEntity> coins)  success,required TResult Function( ApiErrorModel error)  error,required TResult Function( List<MarketCoinEntity> coins)  paginationLoading,required TResult Function( List<MarketCoinEntity> coins,  ApiErrorModel error)  paginationError,}) {final _that = this;
switch (_that) {
case MarketInitial():
return initial();case MarketLoading():
return loading();case MarketSuccess():
return success(_that.coins);case MarketError():
return error(_that.error);case MarketPaginationLoading():
return paginationLoading(_that.coins);case MarketPaginationError():
return paginationError(_that.coins,_that.error);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  initial,TResult? Function()?  loading,TResult? Function( List<MarketCoinEntity> coins)?  success,TResult? Function( ApiErrorModel error)?  error,TResult? Function( List<MarketCoinEntity> coins)?  paginationLoading,TResult? Function( List<MarketCoinEntity> coins,  ApiErrorModel error)?  paginationError,}) {final _that = this;
switch (_that) {
case MarketInitial() when initial != null:
return initial();case MarketLoading() when loading != null:
return loading();case MarketSuccess() when success != null:
return success(_that.coins);case MarketError() when error != null:
return error(_that.error);case MarketPaginationLoading() when paginationLoading != null:
return paginationLoading(_that.coins);case MarketPaginationError() when paginationError != null:
return paginationError(_that.coins,_that.error);case _:
  return null;

}
}

}

/// @nodoc


class MarketInitial implements MarketState {
  const MarketInitial();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is MarketInitial);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'MarketState.initial()';
}


}




/// @nodoc


class MarketLoading implements MarketState {
  const MarketLoading();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is MarketLoading);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'MarketState.loading()';
}


}




/// @nodoc


class MarketSuccess implements MarketState {
  const MarketSuccess(final  List<MarketCoinEntity> coins): _coins = coins;
  

 final  List<MarketCoinEntity> _coins;
 List<MarketCoinEntity> get coins {
  if (_coins is EqualUnmodifiableListView) return _coins;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_coins);
}


/// Create a copy of MarketState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$MarketSuccessCopyWith<MarketSuccess> get copyWith => _$MarketSuccessCopyWithImpl<MarketSuccess>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is MarketSuccess&&const DeepCollectionEquality().equals(other._coins, _coins));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_coins));

@override
String toString() {
  return 'MarketState.success(coins: $coins)';
}


}

/// @nodoc
abstract mixin class $MarketSuccessCopyWith<$Res> implements $MarketStateCopyWith<$Res> {
  factory $MarketSuccessCopyWith(MarketSuccess value, $Res Function(MarketSuccess) _then) = _$MarketSuccessCopyWithImpl;
@useResult
$Res call({
 List<MarketCoinEntity> coins
});




}
/// @nodoc
class _$MarketSuccessCopyWithImpl<$Res>
    implements $MarketSuccessCopyWith<$Res> {
  _$MarketSuccessCopyWithImpl(this._self, this._then);

  final MarketSuccess _self;
  final $Res Function(MarketSuccess) _then;

/// Create a copy of MarketState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? coins = null,}) {
  return _then(MarketSuccess(
null == coins ? _self._coins : coins // ignore: cast_nullable_to_non_nullable
as List<MarketCoinEntity>,
  ));
}


}

/// @nodoc


class MarketError implements MarketState {
  const MarketError(this.error);
  

 final  ApiErrorModel error;

/// Create a copy of MarketState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$MarketErrorCopyWith<MarketError> get copyWith => _$MarketErrorCopyWithImpl<MarketError>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is MarketError&&(identical(other.error, error) || other.error == error));
}


@override
int get hashCode => Object.hash(runtimeType,error);

@override
String toString() {
  return 'MarketState.error(error: $error)';
}


}

/// @nodoc
abstract mixin class $MarketErrorCopyWith<$Res> implements $MarketStateCopyWith<$Res> {
  factory $MarketErrorCopyWith(MarketError value, $Res Function(MarketError) _then) = _$MarketErrorCopyWithImpl;
@useResult
$Res call({
 ApiErrorModel error
});




}
/// @nodoc
class _$MarketErrorCopyWithImpl<$Res>
    implements $MarketErrorCopyWith<$Res> {
  _$MarketErrorCopyWithImpl(this._self, this._then);

  final MarketError _self;
  final $Res Function(MarketError) _then;

/// Create a copy of MarketState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? error = null,}) {
  return _then(MarketError(
null == error ? _self.error : error // ignore: cast_nullable_to_non_nullable
as ApiErrorModel,
  ));
}


}

/// @nodoc


class MarketPaginationLoading implements MarketState {
  const MarketPaginationLoading(final  List<MarketCoinEntity> coins): _coins = coins;
  

 final  List<MarketCoinEntity> _coins;
 List<MarketCoinEntity> get coins {
  if (_coins is EqualUnmodifiableListView) return _coins;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_coins);
}


/// Create a copy of MarketState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$MarketPaginationLoadingCopyWith<MarketPaginationLoading> get copyWith => _$MarketPaginationLoadingCopyWithImpl<MarketPaginationLoading>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is MarketPaginationLoading&&const DeepCollectionEquality().equals(other._coins, _coins));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_coins));

@override
String toString() {
  return 'MarketState.paginationLoading(coins: $coins)';
}


}

/// @nodoc
abstract mixin class $MarketPaginationLoadingCopyWith<$Res> implements $MarketStateCopyWith<$Res> {
  factory $MarketPaginationLoadingCopyWith(MarketPaginationLoading value, $Res Function(MarketPaginationLoading) _then) = _$MarketPaginationLoadingCopyWithImpl;
@useResult
$Res call({
 List<MarketCoinEntity> coins
});




}
/// @nodoc
class _$MarketPaginationLoadingCopyWithImpl<$Res>
    implements $MarketPaginationLoadingCopyWith<$Res> {
  _$MarketPaginationLoadingCopyWithImpl(this._self, this._then);

  final MarketPaginationLoading _self;
  final $Res Function(MarketPaginationLoading) _then;

/// Create a copy of MarketState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? coins = null,}) {
  return _then(MarketPaginationLoading(
null == coins ? _self._coins : coins // ignore: cast_nullable_to_non_nullable
as List<MarketCoinEntity>,
  ));
}


}

/// @nodoc


class MarketPaginationError implements MarketState {
  const MarketPaginationError(final  List<MarketCoinEntity> coins, this.error): _coins = coins;
  

 final  List<MarketCoinEntity> _coins;
 List<MarketCoinEntity> get coins {
  if (_coins is EqualUnmodifiableListView) return _coins;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_coins);
}

 final  ApiErrorModel error;

/// Create a copy of MarketState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$MarketPaginationErrorCopyWith<MarketPaginationError> get copyWith => _$MarketPaginationErrorCopyWithImpl<MarketPaginationError>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is MarketPaginationError&&const DeepCollectionEquality().equals(other._coins, _coins)&&(identical(other.error, error) || other.error == error));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_coins),error);

@override
String toString() {
  return 'MarketState.paginationError(coins: $coins, error: $error)';
}


}

/// @nodoc
abstract mixin class $MarketPaginationErrorCopyWith<$Res> implements $MarketStateCopyWith<$Res> {
  factory $MarketPaginationErrorCopyWith(MarketPaginationError value, $Res Function(MarketPaginationError) _then) = _$MarketPaginationErrorCopyWithImpl;
@useResult
$Res call({
 List<MarketCoinEntity> coins, ApiErrorModel error
});




}
/// @nodoc
class _$MarketPaginationErrorCopyWithImpl<$Res>
    implements $MarketPaginationErrorCopyWith<$Res> {
  _$MarketPaginationErrorCopyWithImpl(this._self, this._then);

  final MarketPaginationError _self;
  final $Res Function(MarketPaginationError) _then;

/// Create a copy of MarketState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? coins = null,Object? error = null,}) {
  return _then(MarketPaginationError(
null == coins ? _self._coins : coins // ignore: cast_nullable_to_non_nullable
as List<MarketCoinEntity>,null == error ? _self.error : error // ignore: cast_nullable_to_non_nullable
as ApiErrorModel,
  ));
}


}

// dart format on
