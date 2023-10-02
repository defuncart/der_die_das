import 'package:der_die_das/core/db/nouns_database/enums/level.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'filter_search.freezed.dart';

@freezed
abstract class FilterSearch with _$FilterSearch {
  factory FilterSearch({
    String? text,
    Level? level,
  }) = _FilterSearch;
}
