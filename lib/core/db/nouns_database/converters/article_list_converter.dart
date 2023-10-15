import 'dart:convert';

import 'package:der_die_das/core/db/nouns_database/enums/article.dart';
import 'package:der_die_das/core/db/nouns_database/utils/equal_list.dart';
import 'package:drift/drift.dart';

class ArticleListConverter extends TypeConverter<EqualList<Article>, String> {
  const ArticleListConverter();

  @override
  EqualList<Article> fromSql(String fromDb) {
    final list = (json.decode(fromDb) as List).map((e) => Article.values[e]).toList();
    return EqualList<Article>(list);
  }

  @override
  String toSql(EqualList<Article> value) =>
      json.encode(EqualList(List<int>.unmodifiable(value.inner.map((e) => e.index))));
}
