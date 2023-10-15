// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'nouns_database.dart';

// ignore_for_file: type=lint
class $NounsTable extends Nouns with TableInfo<$NounsTable, Noun> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $NounsTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<int> id = GeneratedColumn<int>('id', aliasedName, false,
      hasAutoIncrement: true,
      type: DriftSqlType.int,
      requiredDuringInsert: false,
      defaultConstraints: GeneratedColumn.constraintIsAlways('PRIMARY KEY AUTOINCREMENT'));
  static const VerificationMeta _keyMeta = const VerificationMeta('key');
  @override
  late final GeneratedColumn<String> key =
      GeneratedColumn<String>('key', aliasedName, false, type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _withArticleMeta = const VerificationMeta('withArticle');
  @override
  late final GeneratedColumn<String> withArticle = GeneratedColumn<String>('with_article', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _withoutArticleMeta = const VerificationMeta('withoutArticle');
  @override
  late final GeneratedColumn<String> withoutArticle = GeneratedColumn<String>('without_article', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _withoutArticleNormalizedMeta = const VerificationMeta('withoutArticleNormalized');
  @override
  late final GeneratedColumn<String> withoutArticleNormalized = GeneratedColumn<String>(
      'without_article_normalized', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _articleIndecesMeta = const VerificationMeta('articleIndeces');
  @override
  late final GeneratedColumnWithTypeConverter<EqualList<int>, String> articleIndeces = GeneratedColumn<String>(
          'article_indeces', aliasedName, false,
          type: DriftSqlType.string, requiredDuringInsert: true)
      .withConverter<EqualList<int>>($NounsTable.$converterarticleIndeces);
  static const VerificationMeta _levelMeta = const VerificationMeta('level');
  @override
  late final GeneratedColumnWithTypeConverter<Level, int> level =
      GeneratedColumn<int>('level', aliasedName, false, type: DriftSqlType.int, requiredDuringInsert: true)
          .withConverter<Level>($NounsTable.$converterlevel);
  static const VerificationMeta _isAmbiguousMeta = const VerificationMeta('isAmbiguous');
  @override
  late final GeneratedColumn<bool> isAmbiguous = GeneratedColumn<bool>('is_ambiguous', aliasedName, false,
      type: DriftSqlType.bool,
      requiredDuringInsert: true,
      defaultConstraints: GeneratedColumn.constraintIsAlways('CHECK ("is_ambiguous" IN (0, 1))'));
  static const VerificationMeta _attemptsMeta = const VerificationMeta('attempts');
  @override
  late final GeneratedColumn<int> attempts = GeneratedColumn<int>('attempts', aliasedName, false,
      type: DriftSqlType.int, requiredDuringInsert: false, defaultValue: const Constant(0));
  static const VerificationMeta _timesCorrectMeta = const VerificationMeta('timesCorrect');
  @override
  late final GeneratedColumn<int> timesCorrect = GeneratedColumn<int>('times_correct', aliasedName, false,
      type: DriftSqlType.int, requiredDuringInsert: false, defaultValue: const Constant(0));
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
        attempts,
        timesCorrect
      ];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'nouns';
  @override
  VerificationContext validateIntegrity(Insertable<Noun> instance, {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    }
    if (data.containsKey('key')) {
      context.handle(_keyMeta, key.isAcceptableOrUnknown(data['key']!, _keyMeta));
    } else if (isInserting) {
      context.missing(_keyMeta);
    }
    if (data.containsKey('with_article')) {
      context.handle(_withArticleMeta, withArticle.isAcceptableOrUnknown(data['with_article']!, _withArticleMeta));
    } else if (isInserting) {
      context.missing(_withArticleMeta);
    }
    if (data.containsKey('without_article')) {
      context.handle(
          _withoutArticleMeta, withoutArticle.isAcceptableOrUnknown(data['without_article']!, _withoutArticleMeta));
    } else if (isInserting) {
      context.missing(_withoutArticleMeta);
    }
    if (data.containsKey('without_article_normalized')) {
      context.handle(
          _withoutArticleNormalizedMeta,
          withoutArticleNormalized.isAcceptableOrUnknown(
              data['without_article_normalized']!, _withoutArticleNormalizedMeta));
    } else if (isInserting) {
      context.missing(_withoutArticleNormalizedMeta);
    }
    context.handle(_articleIndecesMeta, const VerificationResult.success());
    context.handle(_levelMeta, const VerificationResult.success());
    if (data.containsKey('is_ambiguous')) {
      context.handle(_isAmbiguousMeta, isAmbiguous.isAcceptableOrUnknown(data['is_ambiguous']!, _isAmbiguousMeta));
    } else if (isInserting) {
      context.missing(_isAmbiguousMeta);
    }
    if (data.containsKey('attempts')) {
      context.handle(_attemptsMeta, attempts.isAcceptableOrUnknown(data['attempts']!, _attemptsMeta));
    }
    if (data.containsKey('times_correct')) {
      context.handle(_timesCorrectMeta, timesCorrect.isAcceptableOrUnknown(data['times_correct']!, _timesCorrectMeta));
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  Noun map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return Noun(
      id: attachedDatabase.typeMapping.read(DriftSqlType.int, data['${effectivePrefix}id'])!,
      key: attachedDatabase.typeMapping.read(DriftSqlType.string, data['${effectivePrefix}key'])!,
      withArticle: attachedDatabase.typeMapping.read(DriftSqlType.string, data['${effectivePrefix}with_article'])!,
      withoutArticle:
          attachedDatabase.typeMapping.read(DriftSqlType.string, data['${effectivePrefix}without_article'])!,
      withoutArticleNormalized:
          attachedDatabase.typeMapping.read(DriftSqlType.string, data['${effectivePrefix}without_article_normalized'])!,
      articleIndeces: $NounsTable.$converterarticleIndeces
          .fromSql(attachedDatabase.typeMapping.read(DriftSqlType.string, data['${effectivePrefix}article_indeces'])!),
      level: $NounsTable.$converterlevel
          .fromSql(attachedDatabase.typeMapping.read(DriftSqlType.int, data['${effectivePrefix}level'])!),
      isAmbiguous: attachedDatabase.typeMapping.read(DriftSqlType.bool, data['${effectivePrefix}is_ambiguous'])!,
      attempts: attachedDatabase.typeMapping.read(DriftSqlType.int, data['${effectivePrefix}attempts'])!,
      timesCorrect: attachedDatabase.typeMapping.read(DriftSqlType.int, data['${effectivePrefix}times_correct'])!,
    );
  }

  @override
  $NounsTable createAlias(String alias) {
    return $NounsTable(attachedDatabase, alias);
  }

  static TypeConverter<EqualList<int>, String> $converterarticleIndeces = const IntListConverter();
  static TypeConverter<Level, int> $converterlevel = const LevelConverter();
}

class Noun extends DataClass implements Insertable<Noun> {
  final int id;
  final String key;
  final String withArticle;
  final String withoutArticle;
  final String withoutArticleNormalized;
  final EqualList<int> articleIndeces;
  final Level level;
  final bool isAmbiguous;
  final int attempts;
  final int timesCorrect;
  const Noun(
      {required this.id,
      required this.key,
      required this.withArticle,
      required this.withoutArticle,
      required this.withoutArticleNormalized,
      required this.articleIndeces,
      required this.level,
      required this.isAmbiguous,
      required this.attempts,
      required this.timesCorrect});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<int>(id);
    map['key'] = Variable<String>(key);
    map['with_article'] = Variable<String>(withArticle);
    map['without_article'] = Variable<String>(withoutArticle);
    map['without_article_normalized'] = Variable<String>(withoutArticleNormalized);
    {
      final converter = $NounsTable.$converterarticleIndeces;
      map['article_indeces'] = Variable<String>(converter.toSql(articleIndeces));
    }
    {
      final converter = $NounsTable.$converterlevel;
      map['level'] = Variable<int>(converter.toSql(level));
    }
    map['is_ambiguous'] = Variable<bool>(isAmbiguous);
    map['attempts'] = Variable<int>(attempts);
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
      attempts: Value(attempts),
      timesCorrect: Value(timesCorrect),
    );
  }

  factory Noun.fromJson(Map<String, dynamic> json, {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return Noun(
      id: serializer.fromJson<int>(json['id']),
      key: serializer.fromJson<String>(json['key']),
      withArticle: serializer.fromJson<String>(json['withArticle']),
      withoutArticle: serializer.fromJson<String>(json['withoutArticle']),
      withoutArticleNormalized: serializer.fromJson<String>(json['withoutArticleNormalized']),
      articleIndeces: serializer.fromJson<EqualList<int>>(json['articleIndeces']),
      level: serializer.fromJson<Level>(json['level']),
      isAmbiguous: serializer.fromJson<bool>(json['isAmbiguous']),
      attempts: serializer.fromJson<int>(json['attempts']),
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
      'withoutArticleNormalized': serializer.toJson<String>(withoutArticleNormalized),
      'articleIndeces': serializer.toJson<EqualList<int>>(articleIndeces),
      'level': serializer.toJson<Level>(level),
      'isAmbiguous': serializer.toJson<bool>(isAmbiguous),
      'attempts': serializer.toJson<int>(attempts),
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
          int? attempts,
          int? timesCorrect}) =>
      Noun(
        id: id ?? this.id,
        key: key ?? this.key,
        withArticle: withArticle ?? this.withArticle,
        withoutArticle: withoutArticle ?? this.withoutArticle,
        withoutArticleNormalized: withoutArticleNormalized ?? this.withoutArticleNormalized,
        articleIndeces: articleIndeces ?? this.articleIndeces,
        level: level ?? this.level,
        isAmbiguous: isAmbiguous ?? this.isAmbiguous,
        attempts: attempts ?? this.attempts,
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
          ..write('attempts: $attempts, ')
          ..write('timesCorrect: $timesCorrect')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(id, key, withArticle, withoutArticle, withoutArticleNormalized, articleIndeces, level,
      isAmbiguous, attempts, timesCorrect);
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
          other.attempts == this.attempts &&
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
  final Value<int> attempts;
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
    this.attempts = const Value.absent(),
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
    this.attempts = const Value.absent(),
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
    Expression<String>? articleIndeces,
    Expression<int>? level,
    Expression<bool>? isAmbiguous,
    Expression<int>? attempts,
    Expression<int>? timesCorrect,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (key != null) 'key': key,
      if (withArticle != null) 'with_article': withArticle,
      if (withoutArticle != null) 'without_article': withoutArticle,
      if (withoutArticleNormalized != null) 'without_article_normalized': withoutArticleNormalized,
      if (articleIndeces != null) 'article_indeces': articleIndeces,
      if (level != null) 'level': level,
      if (isAmbiguous != null) 'is_ambiguous': isAmbiguous,
      if (attempts != null) 'attempts': attempts,
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
      Value<int>? attempts,
      Value<int>? timesCorrect}) {
    return NounsCompanion(
      id: id ?? this.id,
      key: key ?? this.key,
      withArticle: withArticle ?? this.withArticle,
      withoutArticle: withoutArticle ?? this.withoutArticle,
      withoutArticleNormalized: withoutArticleNormalized ?? this.withoutArticleNormalized,
      articleIndeces: articleIndeces ?? this.articleIndeces,
      level: level ?? this.level,
      isAmbiguous: isAmbiguous ?? this.isAmbiguous,
      attempts: attempts ?? this.attempts,
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
      map['without_article_normalized'] = Variable<String>(withoutArticleNormalized.value);
    }
    if (articleIndeces.present) {
      final converter = $NounsTable.$converterarticleIndeces;
      map['article_indeces'] = Variable<String>(converter.toSql(articleIndeces.value));
    }
    if (level.present) {
      final converter = $NounsTable.$converterlevel;
      map['level'] = Variable<int>(converter.toSql(level.value));
    }
    if (isAmbiguous.present) {
      map['is_ambiguous'] = Variable<bool>(isAmbiguous.value);
    }
    if (attempts.present) {
      map['attempts'] = Variable<int>(attempts.value);
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
          ..write('attempts: $attempts, ')
          ..write('timesCorrect: $timesCorrect')
          ..write(')'))
        .toString();
  }
}

abstract class _$NounDatabase extends GeneratedDatabase {
  _$NounDatabase(QueryExecutor e) : super(e);
  late final $NounsTable nouns = $NounsTable(this);
  @override
  Iterable<TableInfo<Table, Object?>> get allTables => allSchemaEntities.whereType<TableInfo<Table, Object?>>();
  @override
  List<DatabaseSchemaEntity> get allSchemaEntities => [nouns];
}
