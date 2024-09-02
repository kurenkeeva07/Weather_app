// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'forecast_location_data.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$ForecastLocationData {
  String? get name => throw _privateConstructorUsedError;
  String? get region => throw _privateConstructorUsedError;
  String? get country => throw _privateConstructorUsedError;
  String? get localTime => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ForecastLocationDataCopyWith<ForecastLocationData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ForecastLocationDataCopyWith<$Res> {
  factory $ForecastLocationDataCopyWith(ForecastLocationData value,
          $Res Function(ForecastLocationData) then) =
      _$ForecastLocationDataCopyWithImpl<$Res, ForecastLocationData>;
  @useResult
  $Res call({String? name, String? region, String? country, String? localTime});
}

/// @nodoc
class _$ForecastLocationDataCopyWithImpl<$Res,
        $Val extends ForecastLocationData>
    implements $ForecastLocationDataCopyWith<$Res> {
  _$ForecastLocationDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = freezed,
    Object? region = freezed,
    Object? country = freezed,
    Object? localTime = freezed,
  }) {
    return _then(_value.copyWith(
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      region: freezed == region
          ? _value.region
          : region // ignore: cast_nullable_to_non_nullable
              as String?,
      country: freezed == country
          ? _value.country
          : country // ignore: cast_nullable_to_non_nullable
              as String?,
      localTime: freezed == localTime
          ? _value.localTime
          : localTime // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ForecastLocationDataImplCopyWith<$Res>
    implements $ForecastLocationDataCopyWith<$Res> {
  factory _$$ForecastLocationDataImplCopyWith(_$ForecastLocationDataImpl value,
          $Res Function(_$ForecastLocationDataImpl) then) =
      __$$ForecastLocationDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? name, String? region, String? country, String? localTime});
}

/// @nodoc
class __$$ForecastLocationDataImplCopyWithImpl<$Res>
    extends _$ForecastLocationDataCopyWithImpl<$Res, _$ForecastLocationDataImpl>
    implements _$$ForecastLocationDataImplCopyWith<$Res> {
  __$$ForecastLocationDataImplCopyWithImpl(_$ForecastLocationDataImpl _value,
      $Res Function(_$ForecastLocationDataImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = freezed,
    Object? region = freezed,
    Object? country = freezed,
    Object? localTime = freezed,
  }) {
    return _then(_$ForecastLocationDataImpl(
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      region: freezed == region
          ? _value.region
          : region // ignore: cast_nullable_to_non_nullable
              as String?,
      country: freezed == country
          ? _value.country
          : country // ignore: cast_nullable_to_non_nullable
              as String?,
      localTime: freezed == localTime
          ? _value.localTime
          : localTime // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$ForecastLocationDataImpl implements _ForecastLocationData {
  _$ForecastLocationDataImpl(
      {this.name, this.region, this.country, this.localTime});

  @override
  final String? name;
  @override
  final String? region;
  @override
  final String? country;
  @override
  final String? localTime;

  @override
  String toString() {
    return 'ForecastLocationData(name: $name, region: $region, country: $country, localTime: $localTime)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ForecastLocationDataImpl &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.region, region) || other.region == region) &&
            (identical(other.country, country) || other.country == country) &&
            (identical(other.localTime, localTime) ||
                other.localTime == localTime));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, name, region, country, localTime);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ForecastLocationDataImplCopyWith<_$ForecastLocationDataImpl>
      get copyWith =>
          __$$ForecastLocationDataImplCopyWithImpl<_$ForecastLocationDataImpl>(
              this, _$identity);
}

abstract class _ForecastLocationData implements ForecastLocationData {
  factory _ForecastLocationData(
      {final String? name,
      final String? region,
      final String? country,
      final String? localTime}) = _$ForecastLocationDataImpl;

  @override
  String? get name;
  @override
  String? get region;
  @override
  String? get country;
  @override
  String? get localTime;
  @override
  @JsonKey(ignore: true)
  _$$ForecastLocationDataImplCopyWith<_$ForecastLocationDataImpl>
      get copyWith => throw _privateConstructorUsedError;
}
