// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'weather_data.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

WeatherData _$WeatherDataFromJson(Map<String, dynamic> json) {
  return _WeatherData.fromJson(json);
}

/// @nodoc
mixin _$WeatherData {
  int get id => throw _privateConstructorUsedError;
  Coord? get coord => throw _privateConstructorUsedError;
  List<Weather> get weather => throw _privateConstructorUsedError;
  String get base => throw _privateConstructorUsedError;
  String get icon => throw _privateConstructorUsedError;
  WeatherMain? get main => throw _privateConstructorUsedError;
  int get visibility => throw _privateConstructorUsedError;
  Wind? get wind => throw _privateConstructorUsedError;
  Clouds? get clouds => throw _privateConstructorUsedError;
  int get dt => throw _privateConstructorUsedError;
  Sys? get sys => throw _privateConstructorUsedError;
  int get timezone => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $WeatherDataCopyWith<WeatherData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WeatherDataCopyWith<$Res> {
  factory $WeatherDataCopyWith(
          WeatherData value, $Res Function(WeatherData) then) =
      _$WeatherDataCopyWithImpl<$Res, WeatherData>;
  @useResult
  $Res call(
      {int id,
      Coord? coord,
      List<Weather> weather,
      String base,
      String icon,
      WeatherMain? main,
      int visibility,
      Wind? wind,
      Clouds? clouds,
      int dt,
      Sys? sys,
      int timezone,
      String name});

  $CoordCopyWith<$Res>? get coord;
  $WeatherMainCopyWith<$Res>? get main;
  $WindCopyWith<$Res>? get wind;
  $CloudsCopyWith<$Res>? get clouds;
  $SysCopyWith<$Res>? get sys;
}

/// @nodoc
class _$WeatherDataCopyWithImpl<$Res, $Val extends WeatherData>
    implements $WeatherDataCopyWith<$Res> {
  _$WeatherDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? coord = freezed,
    Object? weather = null,
    Object? base = null,
    Object? icon = null,
    Object? main = freezed,
    Object? visibility = null,
    Object? wind = freezed,
    Object? clouds = freezed,
    Object? dt = null,
    Object? sys = freezed,
    Object? timezone = null,
    Object? name = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      coord: freezed == coord
          ? _value.coord
          : coord // ignore: cast_nullable_to_non_nullable
              as Coord?,
      weather: null == weather
          ? _value.weather
          : weather // ignore: cast_nullable_to_non_nullable
              as List<Weather>,
      base: null == base
          ? _value.base
          : base // ignore: cast_nullable_to_non_nullable
              as String,
      icon: null == icon
          ? _value.icon
          : icon // ignore: cast_nullable_to_non_nullable
              as String,
      main: freezed == main
          ? _value.main
          : main // ignore: cast_nullable_to_non_nullable
              as WeatherMain?,
      visibility: null == visibility
          ? _value.visibility
          : visibility // ignore: cast_nullable_to_non_nullable
              as int,
      wind: freezed == wind
          ? _value.wind
          : wind // ignore: cast_nullable_to_non_nullable
              as Wind?,
      clouds: freezed == clouds
          ? _value.clouds
          : clouds // ignore: cast_nullable_to_non_nullable
              as Clouds?,
      dt: null == dt
          ? _value.dt
          : dt // ignore: cast_nullable_to_non_nullable
              as int,
      sys: freezed == sys
          ? _value.sys
          : sys // ignore: cast_nullable_to_non_nullable
              as Sys?,
      timezone: null == timezone
          ? _value.timezone
          : timezone // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $CoordCopyWith<$Res>? get coord {
    if (_value.coord == null) {
      return null;
    }

    return $CoordCopyWith<$Res>(_value.coord!, (value) {
      return _then(_value.copyWith(coord: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $WeatherMainCopyWith<$Res>? get main {
    if (_value.main == null) {
      return null;
    }

    return $WeatherMainCopyWith<$Res>(_value.main!, (value) {
      return _then(_value.copyWith(main: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $WindCopyWith<$Res>? get wind {
    if (_value.wind == null) {
      return null;
    }

    return $WindCopyWith<$Res>(_value.wind!, (value) {
      return _then(_value.copyWith(wind: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $CloudsCopyWith<$Res>? get clouds {
    if (_value.clouds == null) {
      return null;
    }

    return $CloudsCopyWith<$Res>(_value.clouds!, (value) {
      return _then(_value.copyWith(clouds: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $SysCopyWith<$Res>? get sys {
    if (_value.sys == null) {
      return null;
    }

    return $SysCopyWith<$Res>(_value.sys!, (value) {
      return _then(_value.copyWith(sys: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$WeatherDataImplCopyWith<$Res>
    implements $WeatherDataCopyWith<$Res> {
  factory _$$WeatherDataImplCopyWith(
          _$WeatherDataImpl value, $Res Function(_$WeatherDataImpl) then) =
      __$$WeatherDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      Coord? coord,
      List<Weather> weather,
      String base,
      String icon,
      WeatherMain? main,
      int visibility,
      Wind? wind,
      Clouds? clouds,
      int dt,
      Sys? sys,
      int timezone,
      String name});

  @override
  $CoordCopyWith<$Res>? get coord;
  @override
  $WeatherMainCopyWith<$Res>? get main;
  @override
  $WindCopyWith<$Res>? get wind;
  @override
  $CloudsCopyWith<$Res>? get clouds;
  @override
  $SysCopyWith<$Res>? get sys;
}

/// @nodoc
class __$$WeatherDataImplCopyWithImpl<$Res>
    extends _$WeatherDataCopyWithImpl<$Res, _$WeatherDataImpl>
    implements _$$WeatherDataImplCopyWith<$Res> {
  __$$WeatherDataImplCopyWithImpl(
      _$WeatherDataImpl _value, $Res Function(_$WeatherDataImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? coord = freezed,
    Object? weather = null,
    Object? base = null,
    Object? icon = null,
    Object? main = freezed,
    Object? visibility = null,
    Object? wind = freezed,
    Object? clouds = freezed,
    Object? dt = null,
    Object? sys = freezed,
    Object? timezone = null,
    Object? name = null,
  }) {
    return _then(_$WeatherDataImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      coord: freezed == coord
          ? _value.coord
          : coord // ignore: cast_nullable_to_non_nullable
              as Coord?,
      weather: null == weather
          ? _value._weather
          : weather // ignore: cast_nullable_to_non_nullable
              as List<Weather>,
      base: null == base
          ? _value.base
          : base // ignore: cast_nullable_to_non_nullable
              as String,
      icon: null == icon
          ? _value.icon
          : icon // ignore: cast_nullable_to_non_nullable
              as String,
      main: freezed == main
          ? _value.main
          : main // ignore: cast_nullable_to_non_nullable
              as WeatherMain?,
      visibility: null == visibility
          ? _value.visibility
          : visibility // ignore: cast_nullable_to_non_nullable
              as int,
      wind: freezed == wind
          ? _value.wind
          : wind // ignore: cast_nullable_to_non_nullable
              as Wind?,
      clouds: freezed == clouds
          ? _value.clouds
          : clouds // ignore: cast_nullable_to_non_nullable
              as Clouds?,
      dt: null == dt
          ? _value.dt
          : dt // ignore: cast_nullable_to_non_nullable
              as int,
      sys: freezed == sys
          ? _value.sys
          : sys // ignore: cast_nullable_to_non_nullable
              as Sys?,
      timezone: null == timezone
          ? _value.timezone
          : timezone // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$WeatherDataImpl implements _WeatherData {
  _$WeatherDataImpl(
      {required this.id,
      this.coord = null,
      final List<Weather> weather = const [],
      this.base = "",
      this.icon = "",
      this.main = null,
      this.visibility = 0,
      this.wind = null,
      this.clouds = null,
      this.dt = 0,
      this.sys = null,
      this.timezone = 0,
      this.name = ""})
      : _weather = weather;

  factory _$WeatherDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$WeatherDataImplFromJson(json);

  @override
  final int id;
  @override
  @JsonKey()
  final Coord? coord;
  final List<Weather> _weather;
  @override
  @JsonKey()
  List<Weather> get weather {
    if (_weather is EqualUnmodifiableListView) return _weather;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_weather);
  }

  @override
  @JsonKey()
  final String base;
  @override
  @JsonKey()
  final String icon;
  @override
  @JsonKey()
  final WeatherMain? main;
  @override
  @JsonKey()
  final int visibility;
  @override
  @JsonKey()
  final Wind? wind;
  @override
  @JsonKey()
  final Clouds? clouds;
  @override
  @JsonKey()
  final int dt;
  @override
  @JsonKey()
  final Sys? sys;
  @override
  @JsonKey()
  final int timezone;
  @override
  @JsonKey()
  final String name;

  @override
  String toString() {
    return 'WeatherData(id: $id, coord: $coord, weather: $weather, base: $base, icon: $icon, main: $main, visibility: $visibility, wind: $wind, clouds: $clouds, dt: $dt, sys: $sys, timezone: $timezone, name: $name)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$WeatherDataImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.coord, coord) || other.coord == coord) &&
            const DeepCollectionEquality().equals(other._weather, _weather) &&
            (identical(other.base, base) || other.base == base) &&
            (identical(other.icon, icon) || other.icon == icon) &&
            (identical(other.main, main) || other.main == main) &&
            (identical(other.visibility, visibility) ||
                other.visibility == visibility) &&
            (identical(other.wind, wind) || other.wind == wind) &&
            (identical(other.clouds, clouds) || other.clouds == clouds) &&
            (identical(other.dt, dt) || other.dt == dt) &&
            (identical(other.sys, sys) || other.sys == sys) &&
            (identical(other.timezone, timezone) ||
                other.timezone == timezone) &&
            (identical(other.name, name) || other.name == name));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      coord,
      const DeepCollectionEquality().hash(_weather),
      base,
      icon,
      main,
      visibility,
      wind,
      clouds,
      dt,
      sys,
      timezone,
      name);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$WeatherDataImplCopyWith<_$WeatherDataImpl> get copyWith =>
      __$$WeatherDataImplCopyWithImpl<_$WeatherDataImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$WeatherDataImplToJson(
      this,
    );
  }
}

abstract class _WeatherData implements WeatherData {
  factory _WeatherData(
      {required final int id,
      final Coord? coord,
      final List<Weather> weather,
      final String base,
      final String icon,
      final WeatherMain? main,
      final int visibility,
      final Wind? wind,
      final Clouds? clouds,
      final int dt,
      final Sys? sys,
      final int timezone,
      final String name}) = _$WeatherDataImpl;

  factory _WeatherData.fromJson(Map<String, dynamic> json) =
      _$WeatherDataImpl.fromJson;

  @override
  int get id;
  @override
  Coord? get coord;
  @override
  List<Weather> get weather;
  @override
  String get base;
  @override
  String get icon;
  @override
  WeatherMain? get main;
  @override
  int get visibility;
  @override
  Wind? get wind;
  @override
  Clouds? get clouds;
  @override
  int get dt;
  @override
  Sys? get sys;
  @override
  int get timezone;
  @override
  String get name;
  @override
  @JsonKey(ignore: true)
  _$$WeatherDataImplCopyWith<_$WeatherDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
