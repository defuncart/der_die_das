// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'nouns_database.dart';

// **************************************************************************
// MoorGenerator
// **************************************************************************

// ignore_for_file: unnecessary_brace_in_string_interps, unnecessary_this
class Noun extends DataClass implements Insertable<Noun> {
  final int id;
  final String key;
  final String withArticle;
  final String withoutArticle;
  final String withoutArticleNormalized;
  final EqualList<int> articleIndeces;
  final Level level;
  final bool isAmbiguous;
  final int attemps;
  final int timesCorrect;
  Noun(
      {required this.id,
      required this.key,
      required this.withArticle,
      required this.withoutArticle,
      required this.withoutArticleNormalized,
      required this.articleIndeces,
      required this.level,
      required this.isAmbiguous,
      required this.attemps,
      required this.timesCorrect});
  factory Noun.fromData(Map<String, dynamic> data, {String? prefix}) {
    final effectivePrefix = prefix ?? '';
    return Noun(
      id: const IntType()
          .mapFromDatabaseResponse(data['${effectivePrefix}id'])!,
      key: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}key'])!,
      withArticle: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}with_article'])!,
      withoutArticle: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}without_article'])!,
      withoutArticleNormalized: const StringType().mapFromDatabaseResponse(
          data['${effectivePrefix}without_article_normalized'])!,
      articleIndeces: $NounsTable.$converter0.mapToDart(const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}article_indeces']))!,
      level: $NounsTable.$converter1.mapToDart(const IntType()
          .mapFromDatabaseResponse(data['${effectivePrefix}level']))!,
      isAmbiguous: const BoolType()
          .mapFromDatabaseResponse(data['${effectivePrefix}is_ambiguous'])!,
      attemps: const IntType()
          .mapFromDatabaseResponse(data['${effectivePrefix}attemps'])!,
      timesCorrect: const IntType()
          .mapFromDatabaseResponse(data['${effectivePrefix}times_correct'])!,
    );
  }
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<int>(id);
    map['key'] = Variable<String>(key);
    map['with_article'] = Variable<String>(withArticle);
    map['without_article'] = Variable<String>(withoutArticle);
    map['without_article_normalized'] =
        Variable<String>(withoutArticleNormalized);
    {
      final converter = $NounsTable.$converter0;
      map['article_indeces'] =
          Variable<String>(converter.mapToSql(articleIndeces)!);
    }
    {
      final converter = $NounsTable.$converter1;
      map['level'] = Variable<int>(converter.mapToSql(level)!);
    }
    map['is_ambiguous'] = Variable<bool>(isAmbiguous);
    map['attemps'] = Variable<int>(attemps);
    map['times_correct'] = Variable<int>(timesCorrect);
    return map;
  }

  NounsCompanion toCompanion(bool nullToAbsent) {
    return NounsCompanion(
      id: Value(id),
      key: Value(key),
      withArticle: Value(withArticle),
      withoutArticle: Value(withoutArticle),
      withoutArticleNormalized: Value(withoutArticleNormalized),
      articleIndeces: Value(articleIndeces),
      level: Value(level),
      isAmbiguous: Value(isAmbiguous),
      attemps: Value(attemps),
      timesCorrect: Value(timesCorrect),
    );
  }

  factory Noun.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return Noun(
      id: serializer.fromJson<int>(json['id']),
      key: serializer.fromJson<String>(json['key']),
      withArticle: serializer.fromJson<String>(json['withArticle']),
      withoutArticle: serializer.fromJson<String>(json['withoutArticle']),
      withoutArticleNormalized:
          serializer.fromJson<String>(json['withoutArticleNormalized']),
      articleIndeces:
          serializer.fromJson<EqualList<int>>(json['articleIndeces']),
      level: serializer.fromJson<Level>(json['level']),
      isAmbiguous: serializer.fromJson<bool>(json['isAmbiguous']),
      attemps: serializer.fromJson<int>(json['attemps']),
      timesCorrect: serializer.fromJson<int>(json['timesCorrect']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'key': serializer.toJson<String>(key),
      'withArticle': serializer.toJson<String>(withArticle),
      'withoutArticle': serializer.toJson<String>(withoutArticle),
      'withoutArticleNormalized':
          serializer.toJson<String>(withoutArticleNormalized),
      'articleIndeces': serializer.toJson<EqualList<int>>(articleIndeces),
      'level': serializer.toJson<Level>(level),
      'isAmbiguous': serializer.toJson<bool>(isAmbiguous),
      'attemps': serializer.toJson<int>(attemps),
      'timesCorrect': serializer.toJson<int>(timesCorrect),
    };
  }

  Noun copyWith(
          {int? id,
          String? key,
          String? withArticle,
          String? withoutArticle,
          String? withoutArticleNormalized,
          EqualList<int>? articleIndeces,
          Level? level,
          bool? isAmbiguous,
          int? attemps,
          int? timesCorrect}) =>
      Noun(
        id: id ?? this.id,
        key: key ?? this.key,
        withArticle: withArticle ?? this.withArticle,
        withoutArticle: withoutArticle ?? this.withoutArticle,
        withoutArticleNormalized:
            withoutArticleNormalized ?? this.withoutArticleNormalized,
        articleIndeces: articleIndeces ?? this.articleIndeces,
        level: level ?? this.level,
        isAmbiguous: isAmbiguous ?? this.isAmbiguous,
        attemps: attemps ?? this.attemps,
        timesCorrect: timesCorrect ?? this.timesCorrect,
      );
  @override
  String toString() {
    return (StringBuffer('Noun(')
          ..write('id: $id, ')
          ..write('key: $key, ')
          ..write('withArticle: $withArticle, ')
          ..write('withoutArticle: $withoutArticle, ')
          ..write('withoutArticleNormalized: $withoutArticleNormalized, ')
          ..write('articleIndeces: $articleIndeces, ')
          ..write('level: $level, ')
          ..write('isAmbiguous: $isAmbiguous, ')
          ..write('attemps: $attemps, ')
          ..write('timesCorrect: $timesCorrect')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(
      id,
      key,
      withArticle,
      withoutArticle,
      withoutArticleNormalized,
      articleIndeces,
      level,
      isAmbiguous,
      attemps,
      timesCorrect);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is Noun &&
          other.id == this.id &&
          other.key == this.key &&
          other.withArticle == this.withArticle &&
          other.withoutArticle == this.withoutArticle &&
          other.withoutArticleNormalized == this.withoutArticleNormalized &&
          other.articleIndeces == this.articleIndeces &&
          other.level == this.level &&
          other.isAmbiguous == this.isAmbiguous &&
          other.attemps == this.attemps &&
          other.timesCorrect == this.timesCorrect);
}

class NounsCompanion extends UpdateCompanion<Noun> {
  final Value<int> id;
  final Value<String> key;
  final Value<String> withArticle;
  final Value<String> withoutArticle;
  final Value<String> withoutArticleNormalized;
  final Value<EqualList<int>> articleIndeces;
  final Value<Level> level;
  final Value<bool> isAmbiguous;
  final Value<int> attemps;
  final Value<int> timesCorrect;
  const NounsCompanion({
    this.id = const Value.absent(),
    this.key = const Value.absent(),
    this.withArticle = const Value.absent(),
    this.withoutArticle = const Value.absent(),
    this.withoutArticleNormalized = const Value.absent(),
    this.articleIndeces = const Value.absent(),
    this.level = const Value.absent(),
    this.isAmbiguous = const Value.absent(),
    this.attemps = const Value.absent(),
    this.timesCorrect = const Value.absent(),
  });
  NounsCompanion.insert({
    this.id = const Value.absent(),
    required String key,
    required String withArticle,
    required String withoutArticle,
    required String withoutArticleNormalized,
    required EqualList<int> articleIndeces,
    required Level level,
    required bool isAmbiguous,
    this.attemps = const Value.absent(),
    this.timesCorrect = const Value.absent(),
  })  : key = Value(key),
        withArticle = Value(withArticle),
        withoutArticle = Value(withoutArticle),
        withoutArticleNormalized = Value(withoutArticleNormalized),
        articleIndeces = Value(articleIndeces),
        level = Value(level),
        isAmbiguous = Value(isAmbiguous);
  static Insertable<Noun> custom({
    Expression<int>? id,
    Expression<String>? key,
    Expression<String>? withArticle,
    Expression<String>? withoutArticle,
    Expression<String>? withoutArticleNormalized,
    Expression<EqualList<int>>? articleIndeces,
    Expression<Level>? level,
    Expression<bool>? isAmbiguous,
    Expression<int>? attemps,
    Expression<int>? timesCorrect,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (key != null) 'key': key,
      if (withArticle != null) 'with_article': withArticle,
      if (withoutArticle != null) 'without_article': withoutArticle,
      if (withoutArticleNormalized != null)
        'without_article_normalized': withoutArticleNormalized,
      if (articleIndeces != null) 'article_indeces': articleIndeces,
      if (level != null) 'level': level,
      if (isAmbiguous != null) 'is_ambiguous': isAmbiguous,
      if (attemps != null) 'attemps': attemps,
      if (timesCorrect != null) 'times_correct': timesCorrect,
    });
  }

  NounsCompanion copyWith(
      {Value<int>? id,
      Value<String>? key,
      Value<String>? withArticle,
      Value<String>? withoutArticle,
      Value<String>? withoutArticleNormalized,
      Value<EqualList<int>>? articleIndeces,
      Value<Level>? level,
      Value<bool>? isAmbiguous,
      Value<int>? attemps,
      Value<int>? timesCorrect}) {
    return NounsCompanion(
      id: id ?? this.id,
      key: key ?? this.key,
      withArticle: withArticle ?? this.withArticle,
      withoutArticle: withoutArticle ?? this.withoutArticle,
      withoutArticleNormalized:
          withoutArticleNormalized ?? this.withoutArticleNormalized,
      articleIndeces: articleIndeces ?? this.articleIndeces,
      level: level ?? this.level,
      isAmbiguous: isAmbiguous ?? this.isAmbiguous,
      attemps: attemps ?? this.attemps,
      timesCorrect: timesCorrect ?? this.timesCorrect,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (key.present) {
      map['key'] = Variable<String>(key.value);
    }
    if (withArticle.present) {
      map['with_article'] = Variable<String>(withArticle.value);
    }
    if (withoutArticle.present) {
      map['without_article'] = Variable<String>(withoutArticle.value);
    }
    if (withoutArticleNormalized.present) {
      map['without_article_normalized'] =
          Variable<String>(withoutArticleNormalized.value);
    }
    if (articleIndeces.present) {
      final converter = $NounsTable.$converter0;
      map['article_indeces'] =
          Variable<String>(converter.mapToSql(articleIndeces.value)!);
    }
    if (level.present) {
      final converter = $NounsTable.$converter1;
      map['level'] = Variable<int>(converter.mapToSql(level.value)!);
    }
    if (isAmbiguous.present) {
      map['is_ambiguous'] = Variable<bool>(isAmbiguous.value);
    }
    if (attemps.present) {
      map['attemps'] = Variable<int>(attemps.value);
    }
    if (timesCorrect.present) {
      map['times_correct'] = Variable<int>(timesCorrect.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('NounsCompanion(')
          ..write('id: $id, ')
          ..write('key: $key, ')
          ..write('withArticle: $withArticle, ')
          ..write('withoutArticle: $withoutArticle, ')
          ..write('withoutArticleNormalized: $withoutArticleNormalized, ')
          ..write('articleIndeces: $articleIndeces, ')
          ..write('level: $level, ')
          ..write('isAmbiguous: $isAmbiguous, ')
          ..write('attemps: $attemps, ')
          ..write('timesCorrect: $timesCorrect')
          ..write(')'))
        .toString();
  }
}

class $NounsTable extends Nouns with TableInfo<$NounsTable, Noun> {
  final GeneratedDatabase _db;
  final String? _alias;
  $NounsTable(this._db, [this._alias]);
  final VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<int?> id = GeneratedColumn<int?>(
      'id', aliasedName, false,
      type: const IntType(),
      requiredDuringInsert: false,
      defaultConstraints: 'PRIMARY KEY AUTOINCREMENT');
  final VerificationMeta _keyMeta = const VerificationMeta('key');
  @override
  late final GeneratedColumn<String?> key = GeneratedColumn<String?>(
      'key', aliasedName, false,
      type: const StringType(), requiredDuringInsert: true);
  final VerificationMeta _withArticleMeta =
      const VerificationMeta('withArticle');
  @override
  late final GeneratedColumn<String?> withArticle = GeneratedColumn<String?>(
      'with_article', aliasedName, false,
      type: const StringType(), requiredDuringInsert: true);
  final VerificationMeta _withoutArticleMeta =
      const VerificationMeta('withoutArticle');
  @override
  late final GeneratedColumn<String?> withoutArticle = GeneratedColumn<String?>(
      'without_article', aliasedName, false,
      type: const StringType(), requiredDuringInsert: true);
  final VerificationMeta _withoutArticleNormalizedMeta =
      const VerificationMeta('withoutArticleNormalized');
  @override
  late final GeneratedColumn<String?> withoutArticleNormalized =
      GeneratedColumn<String?>('without_article_normalized', aliasedName, false,
          type: const StringType(), requiredDuringInsert: true);
  final VerificationMeta _articleIndecesMeta =
      const VerificationMeta('articleIndeces');
  @override
  late final GeneratedColumnWithTypeConverter<EqualList<int>, String?>
      articleIndeces = GeneratedColumn<String?>(
              'article_indeces', aliasedName, false,
              type: const StringType(), requiredDuringInsert: true)
          .withConverter<EqualList<int>>($NounsTable.$converter0);
  final VerificationMeta _levelMeta = const VerificationMeta('level');
  @override
  late final GeneratedColumnWithTypeConverter<Level, int?> level =
      GeneratedColumn<int?>('level', aliasedName, false,
              type: const IntType(), requiredDuringInsert: true)
          .withConverter<Level>($NounsTable.$converter1);
  final VerificationMeta _isAmbiguousMeta =
      const VerificationMeta('isAmbiguous');
  @override
  late final GeneratedColumn<bool?> isAmbiguous = GeneratedColumn<bool?>(
      'is_ambiguous', aliasedName, false,
      type: const BoolType(),
      requiredDuringInsert: true,
      defaultConstraints: 'CHECK (is_ambiguous IN (0, 1))');
  final VerificationMeta _attempsMeta = const VerificationMeta('attemps');
  @override
  late final GeneratedColumn<int?> attemps = GeneratedColumn<int?>(
      'attemps', aliasedName, false,
      type: const IntType(),
      requiredDuringInsert: false,
      defaultValue: const Constant(0));
  final VerificationMeta _timesCorrectMeta =
      const VerificationMeta('timesCorrect');
  @override
  late final GeneratedColumn<int?> timesCorrect = GeneratedColumn<int?>(
      'times_correct', aliasedName, false,
      type: const IntType(),
      requiredDuringInsert: false,
      defaultValue: const Constant(0));
  @override
  List<GeneratedColumn> get $columns => [
        id,
        key,
        withArticle,
        withoutArticle,
        withoutArticleNormalized,
        articleIndeces,
        level,
        isAmbiguous,
        attemps,
        timesCorrect
      ];
  @override
  String get aliasedName => _alias ?? 'nouns';
  @override
  String get actualTableName => 'nouns';
  @override
  VerificationContext validateIntegrity(Insertable<Noun> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    }
    if (data.containsKey('key')) {
      context.handle(
          _keyMeta, key.isAcceptableOrUnknown(data['key']!, _keyMeta));
    } else if (isInserting) {
      context.missing(_keyMeta);
    }
    if (data.containsKey('with_article')) {
      context.handle(
          _withArticleMeta,
          withArticle.isAcceptableOrUnknown(
              data['with_article']!, _withArticleMeta));
    } else if (isInserting) {
      context.missing(_withArticleMeta);
    }
    if (data.containsKey('without_article')) {
      context.handle(
          _withoutArticleMeta,
          withoutArticle.isAcceptableOrUnknown(
              data['without_article']!, _withoutArticleMeta));
    } else if (isInserting) {
      context.missing(_withoutArticleMeta);
    }
    if (data.containsKey('without_article_normalized')) {
      context.handle(
          _withoutArticleNormalizedMeta,
          withoutArticleNormalized.isAcceptableOrUnknown(
              data['without_article_normalized']!,
              _withoutArticleNormalizedMeta));
    } else if (isInserting) {
      context.missing(_withoutArticleNormalizedMeta);
    }
    context.handle(_articleIndecesMeta, const VerificationResult.success());
    context.handle(_levelMeta, const VerificationResult.success());
    if (data.containsKey('is_ambiguous')) {
      context.handle(
          _isAmbiguousMeta,
          isAmbiguous.isAcceptableOrUnknown(
              data['is_ambiguous']!, _isAmbiguousMeta));
    } else if (isInserting) {
      context.missing(_isAmbiguousMeta);
    }
    if (data.containsKey('attemps')) {
      context.handle(_attempsMeta,
          attemps.isAcceptableOrUnknown(data['attemps']!, _attempsMeta));
    }
    if (data.containsKey('times_correct')) {
      context.handle(
          _timesCorrectMeta,
          timesCorrect.isAcceptableOrUnknown(
              data['times_correct']!, _timesCorrectMeta));
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  Noun map(Map<String, dynamic> data, {String? tablePrefix}) {
    return Noun.fromData(data,
        prefix: tablePrefix != null ? '$tablePrefix.' : null);
  }

  @override
  $NounsTable createAlias(String alias) {
    return $NounsTable(_db, alias);
  }

  static TypeConverter<EqualList<int>, String> $converter0 =
      const IntListConverter();
  static TypeConverter<Level, int> $converter1 = const LevelConverter();
}

abstract class _$NounDatabase extends GeneratedDatabase {
  _$NounDatabase(QueryExecutor e) : super(SqlTypeSystem.defaultInstance, e);
  late final $NounsTable nouns = $NounsTable(this);
  @override
  Iterable<TableInfo> get allTables => allSchemaEntities.whereType<TableInfo>();
  @override
  List<DatabaseSchemaEntity> get allSchemaEntities => [nouns];
}
