import 'dart:collection';

import 'package:collection/collection.dart';

/// Taken from https://github.com/simolus3/moor/issues/796
class EqualList<T> extends ListBase<T> {
  final List<T> inner;

  EqualList(this.inner);

  @override
  int get length => inner.length;

  @override
  set length(int value) => inner.length = value;

  @override
  T operator [](int index) => inner[index];

  @override
  void operator []=(int index, T value) => inner[index] = value;

  @override
  int get hashCode => ListEquality<T>().hash(this);

  @override
  bool operator ==(Object other) {
    return other is List<T> && ListEquality<T>().equals(other, this);
  }
}
