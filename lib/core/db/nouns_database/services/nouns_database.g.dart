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
  late final GeneratedColumn<int> id = GeneratedColumn<int>(
    'id',
    aliasedName,
    false,
    hasAutoIncrement: true,
    type: DriftSqlType.int,
    requiredDuringInsert: false,
    defaultConstraints: GeneratedColumn.constraintIsAlways('PRIMARY KEY AUTOINCREMENT'),
  );
  static const VerificationMeta _keyMeta = const VerificationMeta('key');
  @override
  late final GeneratedColumn<String> key = GeneratedColumn<String>(
    'key',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _withoutArticleMeta = const VerificationMeta('withoutArticle');
  @override
  late final GeneratedColumn<String> withoutArticle = GeneratedColumn<String>(
    'without_article',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _withoutArticleNormalizedMeta = const VerificationMeta('withoutArticleNormalized');
  @override
  late final GeneratedColumn<String> withoutArticleNormalized = GeneratedColumn<String>(
    'without_article_normalized',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  @override
  late final GeneratedColumnWithTypeConverter<EqualList<Article>, String> articles = GeneratedColumn<String>(
    'articles',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  ).withConverter<EqualList<Article>>($NounsTable.$converterarticles);
  @override
  late final GeneratedColumnWithTypeConverter<Level, int> level = GeneratedColumn<int>(
    'level',
    aliasedName,
    false,
    type: DriftSqlType.int,
    requiredDuringInsert: true,
  ).withConverter<Level>($NounsTable.$converterlevel);
  static const VerificationMeta _ambiguousExampleMeta = const VerificationMeta('ambiguousExample');
  @override
  late final GeneratedColumn<String> ambiguousExample = GeneratedColumn<String>(
    'ambiguous_example',
    aliasedName,
    true,
    type: DriftSqlType.string,
    requiredDuringInsert: false,
  );
  @override
  late final GeneratedColumnWithTypeConverter<Tip?, String> tip = GeneratedColumn<String>(
    'tip',
    aliasedName,
    true,
    type: DriftSqlType.string,
    requiredDuringInsert: false,
  ).withConverter<Tip?>($NounsTable.$convertertipn);
  static const VerificationMeta _attemptsMeta = const VerificationMeta('attempts');
  @override
  late final GeneratedColumn<int> attempts = GeneratedColumn<int>(
    'attempts',
    aliasedName,
    false,
    type: DriftSqlType.int,
    requiredDuringInsert: false,
    defaultValue: const Constant(0),
  );
  static const VerificationMeta _timesCorrectMeta = const VerificationMeta('timesCorrect');
  @override
  late final GeneratedColumn<int> timesCorrect = GeneratedColumn<int>(
    'times_correct',
    aliasedName,
    false,
    type: DriftSqlType.int,
    requiredDuringInsert: false,
    defaultValue: const Constant(0),
  );
  @override
  List<GeneratedColumn> get $columns => [
    id,
    key,
    withoutArticle,
    withoutArticleNormalized,
    articles,
    level,
    ambiguousExample,
    tip,
    attempts,
    timesCorrect,
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
    if (data.containsKey('without_article')) {
      context.handle(
        _withoutArticleMeta,
        withoutArticle.isAcceptableOrUnknown(data['without_article']!, _withoutArticleMeta),
      );
    } else if (isInserting) {
      context.missing(_withoutArticleMeta);
    }
    if (data.containsKey('without_article_normalized')) {
      context.handle(
        _withoutArticleNormalizedMeta,
        withoutArticleNormalized.isAcceptableOrUnknown(
          data['without_article_normalized']!,
          _withoutArticleNormalizedMeta,
        ),
      );
    } else if (isInserting) {
      context.missing(_withoutArticleNormalizedMeta);
    }
    if (data.containsKey('ambiguous_example')) {
      context.handle(
        _ambiguousExampleMeta,
        ambiguousExample.isAcceptableOrUnknown(data['ambiguous_example']!, _ambiguousExampleMeta),
      );
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
      withoutArticle: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}without_article'],
      )!,
      withoutArticleNormalized: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}without_article_normalized'],
      )!,
      articles: $NounsTable.$converterarticles.fromSql(
        attachedDatabase.typeMapping.read(DriftSqlType.string, data['${effectivePrefix}articles'])!,
      ),
      level: $NounsTable.$converterlevel.fromSql(
        attachedDatabase.typeMapping.read(DriftSqlType.int, data['${effectivePrefix}level'])!,
      ),
      ambiguousExample: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}ambiguous_example'],
      ),
      tip: $NounsTable.$convertertipn.fromSql(
        attachedDatabase.typeMapping.read(DriftSqlType.string, data['${effectivePrefix}tip']),
      ),
      attempts: attachedDatabase.typeMapping.read(DriftSqlType.int, data['${effectivePrefix}attempts'])!,
      timesCorrect: attachedDatabase.typeMapping.read(DriftSqlType.int, data['${effectivePrefix}times_correct'])!,
    );
  }

  @override
  $NounsTable createAlias(String alias) {
    return $NounsTable(attachedDatabase, alias);
  }

  static TypeConverter<EqualList<Article>, String> $converterarticles = const ArticleListConverter();
  static JsonTypeConverter2<Level, int, int> $converterlevel = const EnumIndexConverter<Level>(Level.values);
  static TypeConverter<Tip, String> $convertertip = const TipConverter();
  static TypeConverter<Tip?, String?> $convertertipn = NullAwareTypeConverter.wrap($convertertip);
}

class Noun extends DataClass implements Insertable<Noun> {
  final int id;
  final String key;
  final String withoutArticle;
  final String withoutArticleNormalized;
  final EqualList<Article> articles;
  final Level level;
  final String? ambiguousExample;
  final Tip? tip;
  final int attempts;
  final int timesCorrect;
  const Noun({
    required this.id,
    required this.key,
    required this.withoutArticle,
    required this.withoutArticleNormalized,
    required this.articles,
    required this.level,
    this.ambiguousExample,
    this.tip,
    required this.attempts,
    required this.timesCorrect,
  });
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<int>(id);
    map['key'] = Variable<String>(key);
    map['without_article'] = Variable<String>(withoutArticle);
    map['without_article_normalized'] = Variable<String>(withoutArticleNormalized);
    {
      map['articles'] = Variable<String>($NounsTable.$converterarticles.toSql(articles));
    }
    {
      map['level'] = Variable<int>($NounsTable.$converterlevel.toSql(level));
    }
    if (!nullToAbsent || ambiguousExample != null) {
      map['ambiguous_example'] = Variable<String>(ambiguousExample);
    }
    if (!nullToAbsent || tip != null) {
      map['tip'] = Variable<String>($NounsTable.$convertertipn.toSql(tip));
    }
    map['attempts'] = Variable<int>(attempts);
    map['times_correct'] = Variable<int>(timesCorrect);
    return map;
  }

  NounsCompanion toCompanion(bool nullToAbsent) {
    return NounsCompanion(
      id: Value(id),
      key: Value(key),
      withoutArticle: Value(withoutArticle),
      withoutArticleNormalized: Value(withoutArticleNormalized),
      articles: Value(articles),
      level: Value(level),
      ambiguousExample: ambiguousExample == null && nullToAbsent ? const Value.absent() : Value(ambiguousExample),
      tip: tip == null && nullToAbsent ? const Value.absent() : Value(tip),
      attempts: Value(attempts),
      timesCorrect: Value(timesCorrect),
    );
  }

  factory Noun.fromJson(Map<String, dynamic> json, {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return Noun(
      id: serializer.fromJson<int>(json['id']),
      key: serializer.fromJson<String>(json['key']),
      withoutArticle: serializer.fromJson<String>(json['withoutArticle']),
      withoutArticleNormalized: serializer.fromJson<String>(json['withoutArticleNormalized']),
      articles: serializer.fromJson<EqualList<Article>>(json['articles']),
      level: $NounsTable.$converterlevel.fromJson(serializer.fromJson<int>(json['level'])),
      ambiguousExample: serializer.fromJson<String?>(json['ambiguousExample']),
      tip: serializer.fromJson<Tip?>(json['tip']),
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
      'withoutArticle': serializer.toJson<String>(withoutArticle),
      'withoutArticleNormalized': serializer.toJson<String>(withoutArticleNormalized),
      'articles': serializer.toJson<EqualList<Article>>(articles),
      'level': serializer.toJson<int>($NounsTable.$converterlevel.toJson(level)),
      'ambiguousExample': serializer.toJson<String?>(ambiguousExample),
      'tip': serializer.toJson<Tip?>(tip),
      'attempts': serializer.toJson<int>(attempts),
      'timesCorrect': serializer.toJson<int>(timesCorrect),
    };
  }

  Noun copyWith({
    int? id,
    String? key,
    String? withoutArticle,
    String? withoutArticleNormalized,
    EqualList<Article>? articles,
    Level? level,
    Value<String?> ambiguousExample = const Value.absent(),
    Value<Tip?> tip = const Value.absent(),
    int? attempts,
    int? timesCorrect,
  }) => Noun(
    id: id ?? this.id,
    key: key ?? this.key,
    withoutArticle: withoutArticle ?? this.withoutArticle,
    withoutArticleNormalized: withoutArticleNormalized ?? this.withoutArticleNormalized,
    articles: articles ?? this.articles,
    level: level ?? this.level,
    ambiguousExample: ambiguousExample.present ? ambiguousExample.value : this.ambiguousExample,
    tip: tip.present ? tip.value : this.tip,
    attempts: attempts ?? this.attempts,
    timesCorrect: timesCorrect ?? this.timesCorrect,
  );
  Noun copyWithCompanion(NounsCompanion data) {
    return Noun(
      id: data.id.present ? data.id.value : this.id,
      key: data.key.present ? data.key.value : this.key,
      withoutArticle: data.withoutArticle.present ? data.withoutArticle.value : this.withoutArticle,
      withoutArticleNormalized: data.withoutArticleNormalized.present
          ? data.withoutArticleNormalized.value
          : this.withoutArticleNormalized,
      articles: data.articles.present ? data.articles.value : this.articles,
      level: data.level.present ? data.level.value : this.level,
      ambiguousExample: data.ambiguousExample.present ? data.ambiguousExample.value : this.ambiguousExample,
      tip: data.tip.present ? data.tip.value : this.tip,
      attempts: data.attempts.present ? data.attempts.value : this.attempts,
      timesCorrect: data.timesCorrect.present ? data.timesCorrect.value : this.timesCorrect,
    );
  }

  @override
  String toString() {
    return (StringBuffer('Noun(')
          ..write('id: $id, ')
          ..write('key: $key, ')
          ..write('withoutArticle: $withoutArticle, ')
          ..write('withoutArticleNormalized: $withoutArticleNormalized, ')
          ..write('articles: $articles, ')
          ..write('level: $level, ')
          ..write('ambiguousExample: $ambiguousExample, ')
          ..write('tip: $tip, ')
          ..write('attempts: $attempts, ')
          ..write('timesCorrect: $timesCorrect')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(
    id,
    key,
    withoutArticle,
    withoutArticleNormalized,
    articles,
    level,
    ambiguousExample,
    tip,
    attempts,
    timesCorrect,
  );
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is Noun &&
          other.id == this.id &&
          other.key == this.key &&
          other.withoutArticle == this.withoutArticle &&
          other.withoutArticleNormalized == this.withoutArticleNormalized &&
          other.articles == this.articles &&
          other.level == this.level &&
          other.ambiguousExample == this.ambiguousExample &&
          other.tip == this.tip &&
          other.attempts == this.attempts &&
          other.timesCorrect == this.timesCorrect);
}

class NounsCompanion extends UpdateCompanion<Noun> {
  final Value<int> id;
  final Value<String> key;
  final Value<String> withoutArticle;
  final Value<String> withoutArticleNormalized;
  final Value<EqualList<Article>> articles;
  final Value<Level> level;
  final Value<String?> ambiguousExample;
  final Value<Tip?> tip;
  final Value<int> attempts;
  final Value<int> timesCorrect;
  const NounsCompanion({
    this.id = const Value.absent(),
    this.key = const Value.absent(),
    this.withoutArticle = const Value.absent(),
    this.withoutArticleNormalized = const Value.absent(),
    this.articles = const Value.absent(),
    this.level = const Value.absent(),
    this.ambiguousExample = const Value.absent(),
    this.tip = const Value.absent(),
    this.attempts = const Value.absent(),
    this.timesCorrect = const Value.absent(),
  });
  NounsCompanion.insert({
    this.id = const Value.absent(),
    required String key,
    required String withoutArticle,
    required String withoutArticleNormalized,
    required EqualList<Article> articles,
    required Level level,
    this.ambiguousExample = const Value.absent(),
    this.tip = const Value.absent(),
    this.attempts = const Value.absent(),
    this.timesCorrect = const Value.absent(),
  }) : key = Value(key),
       withoutArticle = Value(withoutArticle),
       withoutArticleNormalized = Value(withoutArticleNormalized),
       articles = Value(articles),
       level = Value(level);
  static Insertable<Noun> custom({
    Expression<int>? id,
    Expression<String>? key,
    Expression<String>? withoutArticle,
    Expression<String>? withoutArticleNormalized,
    Expression<String>? articles,
    Expression<int>? level,
    Expression<String>? ambiguousExample,
    Expression<String>? tip,
    Expression<int>? attempts,
    Expression<int>? timesCorrect,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (key != null) 'key': key,
      if (withoutArticle != null) 'without_article': withoutArticle,
      if (withoutArticleNormalized != null) 'without_article_normalized': withoutArticleNormalized,
      if (articles != null) 'articles': articles,
      if (level != null) 'level': level,
      if (ambiguousExample != null) 'ambiguous_example': ambiguousExample,
      if (tip != null) 'tip': tip,
      if (attempts != null) 'attempts': attempts,
      if (timesCorrect != null) 'times_correct': timesCorrect,
    });
  }

  NounsCompanion copyWith({
    Value<int>? id,
    Value<String>? key,
    Value<String>? withoutArticle,
    Value<String>? withoutArticleNormalized,
    Value<EqualList<Article>>? articles,
    Value<Level>? level,
    Value<String?>? ambiguousExample,
    Value<Tip?>? tip,
    Value<int>? attempts,
    Value<int>? timesCorrect,
  }) {
    return NounsCompanion(
      id: id ?? this.id,
      key: key ?? this.key,
      withoutArticle: withoutArticle ?? this.withoutArticle,
      withoutArticleNormalized: withoutArticleNormalized ?? this.withoutArticleNormalized,
      articles: articles ?? this.articles,
      level: level ?? this.level,
      ambiguousExample: ambiguousExample ?? this.ambiguousExample,
      tip: tip ?? this.tip,
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
    if (withoutArticle.present) {
      map['without_article'] = Variable<String>(withoutArticle.value);
    }
    if (withoutArticleNormalized.present) {
      map['without_article_normalized'] = Variable<String>(withoutArticleNormalized.value);
    }
    if (articles.present) {
      map['articles'] = Variable<String>($NounsTable.$converterarticles.toSql(articles.value));
    }
    if (level.present) {
      map['level'] = Variable<int>($NounsTable.$converterlevel.toSql(level.value));
    }
    if (ambiguousExample.present) {
      map['ambiguous_example'] = Variable<String>(ambiguousExample.value);
    }
    if (tip.present) {
      map['tip'] = Variable<String>($NounsTable.$convertertipn.toSql(tip.value));
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
          ..write('withoutArticle: $withoutArticle, ')
          ..write('withoutArticleNormalized: $withoutArticleNormalized, ')
          ..write('articles: $articles, ')
          ..write('level: $level, ')
          ..write('ambiguousExample: $ambiguousExample, ')
          ..write('tip: $tip, ')
          ..write('attempts: $attempts, ')
          ..write('timesCorrect: $timesCorrect')
          ..write(')'))
        .toString();
  }
}

abstract class _$NounDatabase extends GeneratedDatabase {
  _$NounDatabase(QueryExecutor e) : super(e);
  $NounDatabaseManager get managers => $NounDatabaseManager(this);
  late final $NounsTable nouns = $NounsTable(this);
  @override
  Iterable<TableInfo<Table, Object?>> get allTables => allSchemaEntities.whereType<TableInfo<Table, Object?>>();
  @override
  List<DatabaseSchemaEntity> get allSchemaEntities => [nouns];
}

typedef $$NounsTableCreateCompanionBuilder =
    NounsCompanion Function({
      Value<int> id,
      required String key,
      required String withoutArticle,
      required String withoutArticleNormalized,
      required EqualList<Article> articles,
      required Level level,
      Value<String?> ambiguousExample,
      Value<Tip?> tip,
      Value<int> attempts,
      Value<int> timesCorrect,
    });
typedef $$NounsTableUpdateCompanionBuilder =
    NounsCompanion Function({
      Value<int> id,
      Value<String> key,
      Value<String> withoutArticle,
      Value<String> withoutArticleNormalized,
      Value<EqualList<Article>> articles,
      Value<Level> level,
      Value<String?> ambiguousExample,
      Value<Tip?> tip,
      Value<int> attempts,
      Value<int> timesCorrect,
    });

class $$NounsTableFilterComposer extends Composer<_$NounDatabase, $NounsTable> {
  $$NounsTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<int> get id => $composableBuilder(column: $table.id, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get key => $composableBuilder(column: $table.key, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get withoutArticle =>
      $composableBuilder(column: $table.withoutArticle, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get withoutArticleNormalized =>
      $composableBuilder(column: $table.withoutArticleNormalized, builder: (column) => ColumnFilters(column));

  ColumnWithTypeConverterFilters<EqualList<Article>, EqualList<Article>, String> get articles =>
      $composableBuilder(column: $table.articles, builder: (column) => ColumnWithTypeConverterFilters(column));

  ColumnWithTypeConverterFilters<Level, Level, int> get level =>
      $composableBuilder(column: $table.level, builder: (column) => ColumnWithTypeConverterFilters(column));

  ColumnFilters<String> get ambiguousExample =>
      $composableBuilder(column: $table.ambiguousExample, builder: (column) => ColumnFilters(column));

  ColumnWithTypeConverterFilters<Tip?, Tip, String> get tip =>
      $composableBuilder(column: $table.tip, builder: (column) => ColumnWithTypeConverterFilters(column));

  ColumnFilters<int> get attempts =>
      $composableBuilder(column: $table.attempts, builder: (column) => ColumnFilters(column));

  ColumnFilters<int> get timesCorrect =>
      $composableBuilder(column: $table.timesCorrect, builder: (column) => ColumnFilters(column));
}

class $$NounsTableOrderingComposer extends Composer<_$NounDatabase, $NounsTable> {
  $$NounsTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<int> get id => $composableBuilder(column: $table.id, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get key =>
      $composableBuilder(column: $table.key, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get withoutArticle =>
      $composableBuilder(column: $table.withoutArticle, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get withoutArticleNormalized =>
      $composableBuilder(column: $table.withoutArticleNormalized, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get articles =>
      $composableBuilder(column: $table.articles, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<int> get level =>
      $composableBuilder(column: $table.level, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get ambiguousExample =>
      $composableBuilder(column: $table.ambiguousExample, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get tip =>
      $composableBuilder(column: $table.tip, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<int> get attempts =>
      $composableBuilder(column: $table.attempts, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<int> get timesCorrect =>
      $composableBuilder(column: $table.timesCorrect, builder: (column) => ColumnOrderings(column));
}

class $$NounsTableAnnotationComposer extends Composer<_$NounDatabase, $NounsTable> {
  $$NounsTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<int> get id => $composableBuilder(column: $table.id, builder: (column) => column);

  GeneratedColumn<String> get key => $composableBuilder(column: $table.key, builder: (column) => column);

  GeneratedColumn<String> get withoutArticle =>
      $composableBuilder(column: $table.withoutArticle, builder: (column) => column);

  GeneratedColumn<String> get withoutArticleNormalized =>
      $composableBuilder(column: $table.withoutArticleNormalized, builder: (column) => column);

  GeneratedColumnWithTypeConverter<EqualList<Article>, String> get articles =>
      $composableBuilder(column: $table.articles, builder: (column) => column);

  GeneratedColumnWithTypeConverter<Level, int> get level =>
      $composableBuilder(column: $table.level, builder: (column) => column);

  GeneratedColumn<String> get ambiguousExample =>
      $composableBuilder(column: $table.ambiguousExample, builder: (column) => column);

  GeneratedColumnWithTypeConverter<Tip?, String> get tip =>
      $composableBuilder(column: $table.tip, builder: (column) => column);

  GeneratedColumn<int> get attempts => $composableBuilder(column: $table.attempts, builder: (column) => column);

  GeneratedColumn<int> get timesCorrect => $composableBuilder(column: $table.timesCorrect, builder: (column) => column);
}

class $$NounsTableTableManager
    extends
        RootTableManager<
          _$NounDatabase,
          $NounsTable,
          Noun,
          $$NounsTableFilterComposer,
          $$NounsTableOrderingComposer,
          $$NounsTableAnnotationComposer,
          $$NounsTableCreateCompanionBuilder,
          $$NounsTableUpdateCompanionBuilder,
          (Noun, BaseReferences<_$NounDatabase, $NounsTable, Noun>),
          Noun,
          PrefetchHooks Function()
        > {
  $$NounsTableTableManager(_$NounDatabase db, $NounsTable table)
    : super(
        TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () => $$NounsTableFilterComposer($db: db, $table: table),
          createOrderingComposer: () => $$NounsTableOrderingComposer($db: db, $table: table),
          createComputedFieldComposer: () => $$NounsTableAnnotationComposer($db: db, $table: table),
          updateCompanionCallback:
              ({
                Value<int> id = const Value.absent(),
                Value<String> key = const Value.absent(),
                Value<String> withoutArticle = const Value.absent(),
                Value<String> withoutArticleNormalized = const Value.absent(),
                Value<EqualList<Article>> articles = const Value.absent(),
                Value<Level> level = const Value.absent(),
                Value<String?> ambiguousExample = const Value.absent(),
                Value<Tip?> tip = const Value.absent(),
                Value<int> attempts = const Value.absent(),
                Value<int> timesCorrect = const Value.absent(),
              }) => NounsCompanion(
                id: id,
                key: key,
                withoutArticle: withoutArticle,
                withoutArticleNormalized: withoutArticleNormalized,
                articles: articles,
                level: level,
                ambiguousExample: ambiguousExample,
                tip: tip,
                attempts: attempts,
                timesCorrect: timesCorrect,
              ),
          createCompanionCallback:
              ({
                Value<int> id = const Value.absent(),
                required String key,
                required String withoutArticle,
                required String withoutArticleNormalized,
                required EqualList<Article> articles,
                required Level level,
                Value<String?> ambiguousExample = const Value.absent(),
                Value<Tip?> tip = const Value.absent(),
                Value<int> attempts = const Value.absent(),
                Value<int> timesCorrect = const Value.absent(),
              }) => NounsCompanion.insert(
                id: id,
                key: key,
                withoutArticle: withoutArticle,
                withoutArticleNormalized: withoutArticleNormalized,
                articles: articles,
                level: level,
                ambiguousExample: ambiguousExample,
                tip: tip,
                attempts: attempts,
                timesCorrect: timesCorrect,
              ),
          withReferenceMapper: (p0) => p0.map((e) => (e.readTable(table), BaseReferences(db, table, e))).toList(),
          prefetchHooksCallback: null,
        ),
      );
}

typedef $$NounsTableProcessedTableManager =
    ProcessedTableManager<
      _$NounDatabase,
      $NounsTable,
      Noun,
      $$NounsTableFilterComposer,
      $$NounsTableOrderingComposer,
      $$NounsTableAnnotationComposer,
      $$NounsTableCreateCompanionBuilder,
      $$NounsTableUpdateCompanionBuilder,
      (Noun, BaseReferences<_$NounDatabase, $NounsTable, Noun>),
      Noun,
      PrefetchHooks Function()
    >;

class $NounDatabaseManager {
  final _$NounDatabase _db;
  $NounDatabaseManager(this._db);
  $$NounsTableTableManager get nouns => $$NounsTableTableManager(_db, _db.nouns);
}
