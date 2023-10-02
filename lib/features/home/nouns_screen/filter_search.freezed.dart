// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'filter_search.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$FilterSearchTearOff {
  const _$FilterSearchTearOff();

  _FilterSearch call({String? text, Level? level}) {
    return _FilterSearch(
      text: text,
      level: level,
    );
  }
}

/// @nodoc
const $FilterSearch = _$FilterSearchTearOff();

/// @nodoc
mixin _$FilterSearch {
  String? get text => throw _privateConstructorUsedError;
  Level? get level => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $FilterSearchCopyWith<FilterSearch> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FilterSearchCopyWith<$Res> {
  factory $FilterSearchCopyWith(
          FilterSearch value, $Res Function(FilterSearch) then) =
      _$FilterSearchCopyWithImpl<$Res>;
  $Res call({String? text, Level? level});
}

/// @nodoc
class _$FilterSearchCopyWithImpl<$Res> implements $FilterSearchCopyWith<$Res> {
  _$FilterSearchCopyWithImpl(this._value, this._then);

  final FilterSearch _value;
  // ignore: unused_field
  final $Res Function(FilterSearch) _then;

  @override
  $Res call({
    Object? text = freezed,
    Object? level = freezed,
  }) {
    return _then(_value.copyWith(
      text: text == freezed
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String?,
      level: level == freezed
          ? _value.level
          : level // ignore: cast_nullable_to_non_nullable
              as Level?,
    ));
  }
}

/// @nodoc
abstract class _$FilterSearchCopyWith<$Res>
    implements $FilterSearchCopyWith<$Res> {
  factory _$FilterSearchCopyWith(
          _FilterSearch value, $Res Function(_FilterSearch) then) =
      __$FilterSearchCopyWithImpl<$Res>;
  @override
  $Res call({String? text, Level? level});
}

/// @nodoc
class __$FilterSearchCopyWithImpl<$Res> extends _$FilterSearchCopyWithImpl<$Res>
    implements _$FilterSearchCopyWith<$Res> {
  __$FilterSearchCopyWithImpl(
      _FilterSearch _value, $Res Function(_FilterSearch) _then)
      : super(_value, (v) => _then(v as _FilterSearch));

  @override
  _FilterSearch get _value => super._value as _FilterSearch;

  @override
  $Res call({
    Object? text = freezed,
    Object? level = freezed,
  }) {
    return _then(_FilterSearch(
      text: text == freezed
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String?,
      level: level == freezed
          ? _value.level
          : level // ignore: cast_nullable_to_non_nullable
              as Level?,
    ));
  }
}

/// @nodoc

class _$_FilterSearch implements _FilterSearch {
  _$_FilterSearch({this.text, this.level});

  @override
  final String? text;
  @override
  final Level? level;

  @override
  String toString() {
    return 'FilterSearch(text: $text, level: $level)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _FilterSearch &&
            const DeepCollectionEquality().equals(other.text, text) &&
            const DeepCollectionEquality().equals(other.level, level));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(text),
      const DeepCollectionEquality().hash(level));

  @JsonKey(ignore: true)
  @override
  _$FilterSearchCopyWith<_FilterSearch> get copyWith =>
      __$FilterSearchCopyWithImpl<_FilterSearch>(this, _$identity);
}

abstract class _FilterSearch implements FilterSearch {
  factory _FilterSearch({String? text, Level? level}) = _$_FilterSearch;

  @override
  String? get text;
  @override
  Level? get level;
  @override
  @JsonKey(ignore: true)
  _$FilterSearchCopyWith<_FilterSearch> get copyWith =>
      throw _privateConstructorUsedError;
}
