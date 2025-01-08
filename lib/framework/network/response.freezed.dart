// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$ApiResponse<T> {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(T? data, Json json) success,
    required TResult Function(ApiFailure kind, List<String> errors) failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(T? data, Json json)? success,
    TResult? Function(ApiFailure kind, List<String> errors)? failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(T? data, Json json)? success,
    TResult Function(ApiFailure kind, List<String> errors)? failure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ApiResponseSuccess<T> value) success,
    required TResult Function(ApiResponseFailure<T> value) failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ApiResponseSuccess<T> value)? success,
    TResult? Function(ApiResponseFailure<T> value)? failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ApiResponseSuccess<T> value)? success,
    TResult Function(ApiResponseFailure<T> value)? failure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ApiResponseCopyWith<T, $Res> {
  factory $ApiResponseCopyWith(
          ApiResponse<T> value, $Res Function(ApiResponse<T>) then) =
      _$ApiResponseCopyWithImpl<T, $Res, ApiResponse<T>>;
}

/// @nodoc
class _$ApiResponseCopyWithImpl<T, $Res, $Val extends ApiResponse<T>>
    implements $ApiResponseCopyWith<T, $Res> {
  _$ApiResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$ApiResponseSuccessImplCopyWith<T, $Res> {
  factory _$$ApiResponseSuccessImplCopyWith(_$ApiResponseSuccessImpl<T> value,
          $Res Function(_$ApiResponseSuccessImpl<T>) then) =
      __$$ApiResponseSuccessImplCopyWithImpl<T, $Res>;
  @useResult
  $Res call({T? data, Json json});

  $JsonCopyWith<$Res> get json;
}

/// @nodoc
class __$$ApiResponseSuccessImplCopyWithImpl<T, $Res>
    extends _$ApiResponseCopyWithImpl<T, $Res, _$ApiResponseSuccessImpl<T>>
    implements _$$ApiResponseSuccessImplCopyWith<T, $Res> {
  __$$ApiResponseSuccessImplCopyWithImpl(_$ApiResponseSuccessImpl<T> _value,
      $Res Function(_$ApiResponseSuccessImpl<T>) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = freezed,
    Object? json = null,
  }) {
    return _then(_$ApiResponseSuccessImpl<T>(
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as T?,
      json: null == json
          ? _value.json
          : json // ignore: cast_nullable_to_non_nullable
              as Json,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $JsonCopyWith<$Res> get json {
    return $JsonCopyWith<$Res>(_value.json, (value) {
      return _then(_value.copyWith(json: value));
    });
  }
}

/// @nodoc

class _$ApiResponseSuccessImpl<T> extends ApiResponseSuccess<T> {
  _$ApiResponseSuccessImpl({this.data, required this.json}) : super._();

  @override
  final T? data;
  @override
  final Json json;

  @override
  String toString() {
    return 'ApiResponse<$T>.success(data: $data, json: $json)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ApiResponseSuccessImpl<T> &&
            const DeepCollectionEquality().equals(other.data, data) &&
            (identical(other.json, json) || other.json == json));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(data), json);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ApiResponseSuccessImplCopyWith<T, _$ApiResponseSuccessImpl<T>>
      get copyWith => __$$ApiResponseSuccessImplCopyWithImpl<T,
          _$ApiResponseSuccessImpl<T>>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(T? data, Json json) success,
    required TResult Function(ApiFailure kind, List<String> errors) failure,
  }) {
    return success(data, json);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(T? data, Json json)? success,
    TResult? Function(ApiFailure kind, List<String> errors)? failure,
  }) {
    return success?.call(data, json);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(T? data, Json json)? success,
    TResult Function(ApiFailure kind, List<String> errors)? failure,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(data, json);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ApiResponseSuccess<T> value) success,
    required TResult Function(ApiResponseFailure<T> value) failure,
  }) {
    return success(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ApiResponseSuccess<T> value)? success,
    TResult? Function(ApiResponseFailure<T> value)? failure,
  }) {
    return success?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ApiResponseSuccess<T> value)? success,
    TResult Function(ApiResponseFailure<T> value)? failure,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(this);
    }
    return orElse();
  }
}

abstract class ApiResponseSuccess<T> extends ApiResponse<T> {
  factory ApiResponseSuccess({final T? data, required final Json json}) =
      _$ApiResponseSuccessImpl<T>;
  ApiResponseSuccess._() : super._();

  T? get data;
  Json get json;
  @JsonKey(ignore: true)
  _$$ApiResponseSuccessImplCopyWith<T, _$ApiResponseSuccessImpl<T>>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ApiResponseFailureImplCopyWith<T, $Res> {
  factory _$$ApiResponseFailureImplCopyWith(_$ApiResponseFailureImpl<T> value,
          $Res Function(_$ApiResponseFailureImpl<T>) then) =
      __$$ApiResponseFailureImplCopyWithImpl<T, $Res>;
  @useResult
  $Res call({ApiFailure kind, List<String> errors});
}

/// @nodoc
class __$$ApiResponseFailureImplCopyWithImpl<T, $Res>
    extends _$ApiResponseCopyWithImpl<T, $Res, _$ApiResponseFailureImpl<T>>
    implements _$$ApiResponseFailureImplCopyWith<T, $Res> {
  __$$ApiResponseFailureImplCopyWithImpl(_$ApiResponseFailureImpl<T> _value,
      $Res Function(_$ApiResponseFailureImpl<T>) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? kind = null,
    Object? errors = null,
  }) {
    return _then(_$ApiResponseFailureImpl<T>(
      kind: null == kind
          ? _value.kind
          : kind // ignore: cast_nullable_to_non_nullable
              as ApiFailure,
      errors: null == errors
          ? _value._errors
          : errors // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ));
  }
}

/// @nodoc

class _$ApiResponseFailureImpl<T> extends ApiResponseFailure<T> {
  const _$ApiResponseFailureImpl(
      {required this.kind, final List<String> errors = const []})
      : _errors = errors,
        super._();

  @override
  final ApiFailure kind;
  final List<String> _errors;
  @override
  @JsonKey()
  List<String> get errors {
    if (_errors is EqualUnmodifiableListView) return _errors;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_errors);
  }

  @override
  String toString() {
    return 'ApiResponse<$T>.failure(kind: $kind, errors: $errors)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ApiResponseFailureImpl<T> &&
            (identical(other.kind, kind) || other.kind == kind) &&
            const DeepCollectionEquality().equals(other._errors, _errors));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, kind, const DeepCollectionEquality().hash(_errors));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ApiResponseFailureImplCopyWith<T, _$ApiResponseFailureImpl<T>>
      get copyWith => __$$ApiResponseFailureImplCopyWithImpl<T,
          _$ApiResponseFailureImpl<T>>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(T? data, Json json) success,
    required TResult Function(ApiFailure kind, List<String> errors) failure,
  }) {
    return failure(kind, errors);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(T? data, Json json)? success,
    TResult? Function(ApiFailure kind, List<String> errors)? failure,
  }) {
    return failure?.call(kind, errors);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(T? data, Json json)? success,
    TResult Function(ApiFailure kind, List<String> errors)? failure,
    required TResult orElse(),
  }) {
    if (failure != null) {
      return failure(kind, errors);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ApiResponseSuccess<T> value) success,
    required TResult Function(ApiResponseFailure<T> value) failure,
  }) {
    return failure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ApiResponseSuccess<T> value)? success,
    TResult? Function(ApiResponseFailure<T> value)? failure,
  }) {
    return failure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ApiResponseSuccess<T> value)? success,
    TResult Function(ApiResponseFailure<T> value)? failure,
    required TResult orElse(),
  }) {
    if (failure != null) {
      return failure(this);
    }
    return orElse();
  }
}

abstract class ApiResponseFailure<T> extends ApiResponse<T> {
  const factory ApiResponseFailure(
      {required final ApiFailure kind,
      final List<String> errors}) = _$ApiResponseFailureImpl<T>;
  const ApiResponseFailure._() : super._();

  ApiFailure get kind;
  List<String> get errors;
  @JsonKey(ignore: true)
  _$$ApiResponseFailureImplCopyWith<T, _$ApiResponseFailureImpl<T>>
      get copyWith => throw _privateConstructorUsedError;
}
