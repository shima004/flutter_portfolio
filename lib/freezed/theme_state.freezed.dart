// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'theme_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ThemeState {
  bool get isDarkModeEnabled => throw _privateConstructorUsedError;
  ThemeData get lightTheme => throw _privateConstructorUsedError;
  ThemeData get darkTheme => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ThemeStateCopyWith<ThemeState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ThemeStateCopyWith<$Res> {
  factory $ThemeStateCopyWith(
          ThemeState value, $Res Function(ThemeState) then) =
      _$ThemeStateCopyWithImpl<$Res, ThemeState>;
  @useResult
  $Res call(
      {bool isDarkModeEnabled, ThemeData lightTheme, ThemeData darkTheme});
}

/// @nodoc
class _$ThemeStateCopyWithImpl<$Res, $Val extends ThemeState>
    implements $ThemeStateCopyWith<$Res> {
  _$ThemeStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isDarkModeEnabled = null,
    Object? lightTheme = null,
    Object? darkTheme = null,
  }) {
    return _then(_value.copyWith(
      isDarkModeEnabled: null == isDarkModeEnabled
          ? _value.isDarkModeEnabled
          : isDarkModeEnabled // ignore: cast_nullable_to_non_nullable
              as bool,
      lightTheme: null == lightTheme
          ? _value.lightTheme
          : lightTheme // ignore: cast_nullable_to_non_nullable
              as ThemeData,
      darkTheme: null == darkTheme
          ? _value.darkTheme
          : darkTheme // ignore: cast_nullable_to_non_nullable
              as ThemeData,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ThemeStateCopyWith<$Res>
    implements $ThemeStateCopyWith<$Res> {
  factory _$$_ThemeStateCopyWith(
          _$_ThemeState value, $Res Function(_$_ThemeState) then) =
      __$$_ThemeStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {bool isDarkModeEnabled, ThemeData lightTheme, ThemeData darkTheme});
}

/// @nodoc
class __$$_ThemeStateCopyWithImpl<$Res>
    extends _$ThemeStateCopyWithImpl<$Res, _$_ThemeState>
    implements _$$_ThemeStateCopyWith<$Res> {
  __$$_ThemeStateCopyWithImpl(
      _$_ThemeState _value, $Res Function(_$_ThemeState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isDarkModeEnabled = null,
    Object? lightTheme = null,
    Object? darkTheme = null,
  }) {
    return _then(_$_ThemeState(
      isDarkModeEnabled: null == isDarkModeEnabled
          ? _value.isDarkModeEnabled
          : isDarkModeEnabled // ignore: cast_nullable_to_non_nullable
              as bool,
      lightTheme: null == lightTheme
          ? _value.lightTheme
          : lightTheme // ignore: cast_nullable_to_non_nullable
              as ThemeData,
      darkTheme: null == darkTheme
          ? _value.darkTheme
          : darkTheme // ignore: cast_nullable_to_non_nullable
              as ThemeData,
    ));
  }
}

/// @nodoc

class _$_ThemeState implements _ThemeState {
  const _$_ThemeState(
      {required this.isDarkModeEnabled,
      required this.lightTheme,
      required this.darkTheme});

  @override
  final bool isDarkModeEnabled;
  @override
  final ThemeData lightTheme;
  @override
  final ThemeData darkTheme;

  @override
  String toString() {
    return 'ThemeState(isDarkModeEnabled: $isDarkModeEnabled, lightTheme: $lightTheme, darkTheme: $darkTheme)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ThemeState &&
            (identical(other.isDarkModeEnabled, isDarkModeEnabled) ||
                other.isDarkModeEnabled == isDarkModeEnabled) &&
            (identical(other.lightTheme, lightTheme) ||
                other.lightTheme == lightTheme) &&
            (identical(other.darkTheme, darkTheme) ||
                other.darkTheme == darkTheme));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, isDarkModeEnabled, lightTheme, darkTheme);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ThemeStateCopyWith<_$_ThemeState> get copyWith =>
      __$$_ThemeStateCopyWithImpl<_$_ThemeState>(this, _$identity);
}

abstract class _ThemeState implements ThemeState {
  const factory _ThemeState(
      {required final bool isDarkModeEnabled,
      required final ThemeData lightTheme,
      required final ThemeData darkTheme}) = _$_ThemeState;

  @override
  bool get isDarkModeEnabled;
  @override
  ThemeData get lightTheme;
  @override
  ThemeData get darkTheme;
  @override
  @JsonKey(ignore: true)
  _$$_ThemeStateCopyWith<_$_ThemeState> get copyWith =>
      throw _privateConstructorUsedError;
}
