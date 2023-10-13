import 'package:flutter/material.dart';

mixin ArticleContent {
  Widget get derHorizontal => const Row(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [Text('D'), Text('E'), Text('R')],
      );

  Widget get dieHorizontal => const Row(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [Text('D'), Text('I'), Text('E')],
      );

  Widget get dasHorizontal => const Row(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [Text('D'), Text('A'), Text('S')],
      );
}
